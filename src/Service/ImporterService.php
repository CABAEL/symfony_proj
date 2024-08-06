<?php

namespace App\Service;

use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Customer;

class ImporterService
{
    private $httpClient;
    private $entityManager;

    public function __construct(HttpClientInterface $httpClient, EntityManagerInterface $entityManager)
    {
        $this->httpClient = $httpClient;
        $this->entityManager = $entityManager;
    }

    public function importData(): void
    {
        try {
            $response = $this->httpClient->request('GET', 'https://randomuser.me/api/?results=100&nat=au');
            $data = $response->toArray();
            
            $customers = $data['results'] ?? [];

            foreach ($customers as $user) {
                $email = $user['email'];
                $existingCustomer = $this->entityManager->getRepository(Customer::class)->findOneBy(['email' => $email]);

                if (!$existingCustomer) {
                    // Create new Customer entity
                    $customer = new Customer();
                } else {
                    // Update existing Customer entity
                    $customer = $existingCustomer;
                }

                // Populate Customer entity
                $customer->setFirstName($user['name']['first']);
                $customer->setLastName($user['name']['last']);
                $customer->setEmail($email);
                $customer->setUsername($user['login']['username']);
                $customer->setPassword(md5($user['login']['password']));
                $customer->setGender($user['gender']);
                $customer->setCountry($user['location']['country']);
                $customer->setCity($user['location']['city']);
                $customer->setPhone($user['phone']);

                // Persist the entity
                $this->entityManager->persist($customer);
            }

            // Flush the changes
            $this->entityManager->flush();
        } catch (\Exception $e) {
            throw new \RuntimeException('Failed to fetch data: ' . $e->getMessage());
        }
    }
}
