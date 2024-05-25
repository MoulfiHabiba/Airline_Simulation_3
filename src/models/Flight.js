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
  takeoff_time ,
  landing_time ,
  takeoff_place,
  landing_place ,
  ticket_class ,
}) => {
  const filters = {};

  if (takeoff_place) filters.takeoff_place = takeoff_place;
  if (landing_place) filters.landing_place = landing_place;
  if (takeoff_time) filters.takeoff_time = {contains: takeoff_time};
  if (landing_time) filters.landing_time = {contains: landing_time};
  if (ticket_class) filters.ticket_class = ticket_class;

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
  
  export const getFlightById = async (flight_id) => {
    return await prisma.flight.findUnique({ where: { flight_id } });
  };
