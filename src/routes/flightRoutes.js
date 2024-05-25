import express from 'express';
import {
    searchFlight,
    getFlightById,
    getAllFlights,
    createFlight
} from '../controllers/flightController.js';

const router = express.Router();



router.post('/addFlights', createFlight);

router.get('/find', searchFlight);

router.get('/', getAllFlights);

router.get('/:flight_id', getFlightById);



export default router;