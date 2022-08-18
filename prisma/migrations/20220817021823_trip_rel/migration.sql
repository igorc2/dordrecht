/*
  Warnings:

  - Added the required column `tripCategoryId` to the `TripOfferingTripCategory` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `TripOfferingTripCategory` ADD COLUMN `tripCategoryId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `TripOfferingTripCategory` ADD CONSTRAINT `TripOfferingTripCategory_tripOfferingId_fkey` FOREIGN KEY (`tripOfferingId`) REFERENCES `TripOffering`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TripOfferingTripCategory` ADD CONSTRAINT `TripOfferingTripCategory_tripCategoryId_fkey` FOREIGN KEY (`tripCategoryId`) REFERENCES `TripCategory`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
