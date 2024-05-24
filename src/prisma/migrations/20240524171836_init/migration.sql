-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Flight" (
    "flightId" SERIAL NOT NULL,
    "flightDesc" TEXT NOT NULL,
    "takeoffTime" TEXT NOT NULL,
    "landingTime" TEXT NOT NULL,
    "takeoffPlace" TEXT NOT NULL,
    "landingPlace" TEXT NOT NULL,
    "ticketClass" TEXT NOT NULL,
    "ticketPrice" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Flight_pkey" PRIMARY KEY ("flightId")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
