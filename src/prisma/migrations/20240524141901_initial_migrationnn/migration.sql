/*
  Warnings:

  - You are about to drop the column `ladingPlace` on the `Flight` table. All the data in the column will be lost.
  - Added the required column `landingPlace` to the `Flight` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Flight" (
    "flightId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "flightDesc" TEXT NOT NULL,
    "takeoffTime" DATETIME NOT NULL,
    "landingTime" DATETIME NOT NULL,
    "takeoffPlace" TEXT NOT NULL,
    "landingPlace" TEXT NOT NULL,
    "ticketClass" TEXT NOT NULL
);
INSERT INTO "new_Flight" ("flightDesc", "flightId", "landingTime", "takeoffPlace", "takeoffTime", "ticketClass") SELECT "flightDesc", "flightId", "landingTime", "takeoffPlace", "takeoffTime", "ticketClass" FROM "Flight";
DROP TABLE "Flight";
ALTER TABLE "new_Flight" RENAME TO "Flight";
PRAGMA foreign_key_check("Flight");
PRAGMA foreign_keys=ON;
