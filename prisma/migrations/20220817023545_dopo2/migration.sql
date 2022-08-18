-- CreateTable
CREATE TABLE `TripOffering` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `departureDate` DATETIME(3) NULL,
    `arrivalDate` DATETIME(3) NULL,
    `subtitle` VARCHAR(191) NULL,
    `price` DECIMAL(65, 30) NOT NULL,
    `pictureUrl` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TripCategory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TripOfferingTripCategory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tripOfferingId` INTEGER NOT NULL,
    `tripCategoryId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `TripOfferingTripCategory` ADD CONSTRAINT `TripOfferingTripCategory_tripOfferingId_fkey` FOREIGN KEY (`tripOfferingId`) REFERENCES `TripOffering`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TripOfferingTripCategory` ADD CONSTRAINT `TripOfferingTripCategory_tripCategoryId_fkey` FOREIGN KEY (`tripCategoryId`) REFERENCES `TripCategory`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
