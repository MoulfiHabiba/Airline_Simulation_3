import express from 'express';
import {
    searchFlight,
    getFlightById,
    getAllFlights,
    createFlight
} from '../controllers/flightController.js';

const router = express.Router();



router.post('/addFlights', createFlight);

router.get('/filter', searchFlight);

router.get('/', getAllFlights);

router.get('/:flightId', getFlightById);



export default router;