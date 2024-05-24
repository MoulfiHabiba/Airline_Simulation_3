import express from 'express';
import {
    searchFlight,
    getFlightById,
    getAllFlights
} from '../controllers/flightController.js';

const router = express.Router();




router.get('/filter', searchFlight);

router.get('/', getAllFlights);

router.get('/:flightId', getFlightById);



export default router;