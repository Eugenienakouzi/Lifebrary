import express from 'express'
import health from './health.js'
import auth from './auth.js'
import books from './books.js'
import wish from './wish.js'
import reserve from './reserve.js'

const router = express.Router()

router.use(health)
router.use(auth)
router.use(books)
router.use(wish)
router.use(reserve)

export default router
