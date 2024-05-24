import prisma from '../prisma.js';

export const createFlights = async (flightsData) => {
  const createdFlights = [];

  for (const data of flightsData) {
    const createdFlight = await prisma.flight.create({ data });
    createdFlights.push(createdFlight);
  }

  return createdFlights;
};



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
    return await prisma.flight.findUnique({ where: { flightId } });
  };
