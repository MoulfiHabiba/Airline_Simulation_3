/*
  Warnings:

  - The primary key for the `Flight` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `flightDesc` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `flightId` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `landingPlace` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `landingTime` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `takeoffPlace` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `takeoffTime` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `ticketClass` on the `Flight` table. All the data in the column will be lost.
  - You are about to drop the column `ticketPrice` on the `Flight` table. All the data in the column will be lost.
  - Added the required column `flight_desc` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `landing_place` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `landing_time` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `takeoff_place` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `takeoff_time` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ticket_class` to the `Flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ticket_price` to the `Flight` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Flight" DROP CONSTRAINT "Flight_pkey",
DROP COLUMN "flightDesc",
DROP COLUMN "flightId",
DROP COLUMN "landingPlace",
DROP COLUMN "landingTime",
DROP COLUMN "takeoffPlace",
DROP COLUMN "takeoffTime",
DROP COLUMN "ticketClass",
DROP COLUMN "ticketPrice",
ADD COLUMN     "flight_desc" TEXT NOT NULL,
ADD COLUMN     "flight_id" SERIAL NOT NULL,
ADD COLUMN     "landing_place" TEXT NOT NULL,
ADD COLUMN     "landing_time" TEXT NOT NULL,
ADD COLUMN     "takeoff_place" TEXT NOT NULL,
ADD COLUMN     "takeoff_time" TEXT NOT NULL,
ADD COLUMN     "ticket_class" TEXT NOT NULL,
ADD COLUMN     "ticket_price" DOUBLE PRECISION NOT NULL,
ADD CONSTRAINT "Flight_pkey" PRIMARY KEY ("flight_id");
