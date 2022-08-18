-- CreateTable
CREATE TABLE `Trip` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `departureDate` DATETIME(3) NULL,
    `arrivalDate` DATETIME(3) NULL,
    `subtitle` VARCHAR(191) NULL,
    `price` DECIMAL(65, 30) NOT NULL,
    `pictureUrl` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
