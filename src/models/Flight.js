import prisma from '../prisma.js';

export const searchFlight = async ({ 
  takeoffTime ,
  landingTime ,
  takeoffPlace,
  landingPlace ,
  ticketClass ,
}) => {
  const filters = {};

  if (takeoffPlace) filters.takeoffPlace = takeoffPlace;
  if (landingPlace) filters.landingPlace = landingPlace;
  if (takeoffTime) filters.takeoffTime = {contains: takeoffTime};
  if (landingTime) filters.landingTime = {contains: landingTime};
  if (ticketClass) filters.ticketClass = ticketClass;

  return await prisma.flight.findMany({
    where: {
      AND: [
        ...Object.entries(filters).map(([key, value]) => ({ [key]: value }))
      ]
    }
  });
};

export const getAllFlights = async () => {
    return await prisma.flight.findMany();
  };
  
  export const getFlightById = async (flightId) => {
    const flight =  await prisma.flight.findUnique({ where: { flightId } });
    console.log(flight);

    return await prisma.flight.findUnique({ where: { flightId } });
  };
