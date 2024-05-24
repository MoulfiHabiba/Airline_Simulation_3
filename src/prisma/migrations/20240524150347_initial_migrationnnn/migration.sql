-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Flight" (
    "flightId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "flightDesc" TEXT NOT NULL,
    "takeoffTime" TEXT NOT NULL,
    "landingTime" TEXT NOT NULL,
    "takeoffPlace" TEXT NOT NULL,
    "landingPlace" TEXT NOT NULL,
    "ticketClass" TEXT NOT NULL
);
INSERT INTO "new_Flight" ("flightDesc", "flightId", "landingPlace", "landingTime", "takeoffPlace", "takeoffTime", "ticketClass") SELECT "flightDesc", "flightId", "landingPlace", "landingTime", "takeoffPlace", "takeoffTime", "ticketClass" FROM "Flight";
DROP TABLE "Flight";
ALTER TABLE "new_Flight" RENAME TO "Flight";
PRAGMA foreign_key_check("Flight");
PRAGMA foreign_keys=ON;
