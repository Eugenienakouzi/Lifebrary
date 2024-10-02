import express from 'express'
import WishList from '../../persistence/wishlist.js'

const router = express.Router()



router.post('/wishlist/add/:id', async (req, res, next) => {

    try{
        const username = req.session.username;
        const id = req.params.id;
        console.log(username)
  
        const reservation = await WishList.addwhishlit(username,id);
  
        res.status(200).json({ reservation })
    } catch (err) {
        next(err)
    }
})

router.get('/wishlist/print', async (req, res) => {
    try{
        const username = req.session.username;

        const reservation = await WishList.getwhishlist(username);
        console.log(reservation)
        res.status(200).json({ reservation })
    } catch (err) {
        next(err)
    }

})

export default router
