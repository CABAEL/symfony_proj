<?php

namespace App\Controller;

use App\Entity\Customer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManagerInterface;
use App\Service\ImporterService;

class CustomerController extends AbstractController
{
    private $entityManager;
    private $importerService;

    public function __construct(EntityManagerInterface $entityManager,ImporterService $importerService)
    {
        $this->entityManager = $entityManager;
        $this->importerService = $importerService;
    }

    #[Route('/customers', name: 'app_customer_list', methods: ['GET'])]
    public function getAllCustomers(): JsonResponse
    {
        $repository = $this->entityManager->getRepository(Customer::class);
        $customers = $repository->findAll();

        $data = array_map(function (Customer $customer) {
            return [
                'fullName' => $customer->getFirstName() . ' ' . $customer->getLastName(),
                'email' => $customer->getEmail(),
                'country' => $customer->getCountry(),
            ];
        }, $customers);

        return new JsonResponse($data);
    }

    #[Route('/customers/{customerId}', name: 'app_customer_show', methods: ['GET'])]
    public function getCustomerById(int $customerId): JsonResponse
    {
        $repository = $this->entityManager->getRepository(Customer::class);
        $customer = $repository->find($customerId);

        if (!$customer) {
            return new JsonResponse(['error' => 'Customer not found'], 404);
        }

        $data = [
            'fullName' => $customer->getFirstName() . ' ' . $customer->getLastName(),
            'email' => $customer->getEmail(),
            'username' => $customer->getUsername(),
            'gender' => $customer->getGender(),
            'country' => $customer->getCountry(),
            'city' => $customer->getCity(),
            'phone' => $customer->getPhone(),
        ];

        return new JsonResponse($data);
    }

    #[Route('/import', name: 'app_import')]
    public function importData(): Response
    {
        try {
            $this->importerService->importData();
            return new Response('Data imported successfully!');
        } catch (\RuntimeException $e) {
            return new Response('Failed to import data: ' . $e->getMessage());
        }
    }


}
