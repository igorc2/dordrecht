/*
  Warnings:

  - You are about to drop the `TripCategory` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TripOffering` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TripOfferingTripCategory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `TripOfferingTripCategory` DROP FOREIGN KEY `TripOfferingTripCategory_tripCategoryId_fkey`;

-- DropForeignKey
ALTER TABLE `TripOfferingTripCategory` DROP FOREIGN KEY `TripOfferingTripCategory_tripOfferingId_fkey`;

-- DropTable
DROP TABLE `TripCategory`;

-- DropTable
DROP TABLE `TripOffering`;

-- DropTable
DROP TABLE `TripOfferingTripCategory`;
