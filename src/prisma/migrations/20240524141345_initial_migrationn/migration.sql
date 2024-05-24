/*
  Warnings:

  - The primary key for the `Flight` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `arrivalTime` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `departureTime` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `flightClass` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `from` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `to` on the `Flight` table. All the data in the column will be lost.
  - Added the required column `flightDesc` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flightId` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ladingPlace` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `landingTime` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `takeoffPlace` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `takeoffTime` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ticketClass` to the `Flight` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Flight" (
    "flightId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "flightDesc" TEXT NOT NULL,
    "takeoffTime" DATETIME NOT NULL,
    "landingTime" DATETIME NOT NULL,
    "takeoffPlace" TEXT NOT NULL,
    "ladingPlace" TEXT NOT NULL,
    "ticketClass" TEXT NOT NULL
);
DROP TABLE "Flight";
ALTER TABLE "new_Flight" RENAME TO "Flight";
PRAGMA foreign_key_check("Flight");
PRAGMA foreign_keys=ON;
