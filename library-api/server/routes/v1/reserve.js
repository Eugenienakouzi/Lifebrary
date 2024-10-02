import express from 'express'
import reservation from '../../persistence/reservation.js'

const router = express.Router()



router.post('/reservation/add/:id', async (req, res, next) => {

    try{
        const username = req.session.username;
        const id = req.params.id;
        console.log(username)
  
        const resa = await reservation.addreservation(username,id);
  
        res.status(200).json({ resa })
    } catch (err) {
        next(err)
    }
    
})


router.get('/reservation/print', async (req, res) => {
    try{
        const username = req.session.username;

        const resa = await reservation.getreservation(username);
        console.log(resa)
        res.status(200).json({ resa })
    } catch (err) {
        console.log(err)
    }

})

export default router
