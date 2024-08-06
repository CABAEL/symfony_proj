<?php

namespace App\Tests\Controller;

use App\Controller\CustomerController;
use App\Entity\Customer;
use App\Service\ImporterService;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class CustomerControllerTest extends WebTestCase
{
    private $entityManager;
    private $importerService;
    private $controller;

    protected function setUp(): void
    {
        $this->entityManager = $this->createMock(EntityManagerInterface::class);
        $this->importerService = $this->createMock(ImporterService::class);
        $this->controller = new CustomerController($this->entityManager, $this->importerService);
    }

    public function testGetAllCustomers(): void
    {
        $repository = $this->createMock(EntityRepository::class);
        $this->entityManager->method('getRepository')
            ->willReturn($repository);

        $customer = new Customer();
        $customer->setFirstName('John');
        $customer->setLastName('Doe');
        $customer->setEmail('john.doe@example.com');
        $customer->setCountry('USA');

        $repository->method('findAll')
            ->willReturn([$customer]);

        $response = $this->controller->getAllCustomers();

        $this->assertInstanceOf(JsonResponse::class, $response);
        $data = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('fullName', $data[0]);
        $this->assertArrayHasKey('email', $data[0]);
        $this->assertArrayHasKey('country', $data[0]);
        $this->assertEquals('John Doe', $data[0]['fullName']);
    }

    public function testGetCustomerByIdNotFound(): void
    {
        $repository = $this->createMock(EntityRepository::class);
        $this->entityManager->method('getRepository')
            ->willReturn($repository);

        $repository->method('find')
            ->willReturn(null);

        $response = $this->controller->getCustomerById(1);

        $this->assertInstanceOf(JsonResponse::class, $response);
        $this->assertEquals(404, $response->getStatusCode());
        $data = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('error', $data);
        $this->assertEquals('Customer not found', $data['error']);
    }

    public function testImportDataSuccess(): void
    {
        // No return value needed
        $this->importerService->expects($this->once())
            ->method('importData');

        $response = $this->controller->importData();

        $this->assertInstanceOf(Response::class, $response);
        $this->assertEquals('Data imported successfully!', $response->getContent());
    }

    public function testImportDataFailure(): void
    {
        $this->importerService->expects($this->once())
            ->method('importData')
            ->will($this->throwException(new \RuntimeException('API error')));

        $response = $this->controller->importData();

        $this->assertInstanceOf(Response::class, $response);
        $this->assertEquals('Failed to import data: API error', $response->getContent());
    }
}
