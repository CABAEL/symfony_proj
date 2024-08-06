<?php

namespace App\Tests\Command;

use App\Command\App\Command\ImporterCommandPhpCommand;
use App\Service\ImporterService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Tester\CommandTester;
use PHPUnit\Framework\TestCase;

class ImporterCommandPhpCommandTest extends TestCase
{
    private $importerService;
    private $commandTester;

    protected function setUp(): void
    {
        $this->importerService = $this->createMock(ImporterService::class);
        $command = new ImporterCommandPhpCommand($this->importerService);
        $this->commandTester = new CommandTester($command);
    }

    public function testExecuteSuccess(): void
    {
        $this->importerService->expects($this->once())
            ->method('importData');

        $statusCode = $this->commandTester->execute([]);

        $this->assertEquals(Command::SUCCESS, $statusCode);
        $this->assertStringContainsString('Data successfully fetched and imported!', $this->commandTester->getDisplay());
    }

    public function testExecuteFailure(): void
    {
        $this->importerService->method('importData')
            ->will($this->throwException(new \RuntimeException('API error')));

        $statusCode = $this->commandTester->execute([]);

        $this->assertEquals(Command::FAILURE, $statusCode);
        $this->assertStringContainsString('Failed to import data: API error', $this->commandTester->getDisplay());
    }
}
