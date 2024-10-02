import database from './database.js'

const addwhishlit = async (username, id) => {
    const query = 'insert into `wishlist`(username, idbook) value (?, ?)'
    const [result] = await database.execute(query, [username, id])
    if (result.affectedRows === 0) {
        throw new Error(`Failed to add to the wishlist.`)
      }
}

const getwhishlist = async (username) => {
    const query = 'SELECT DISTINCT b.title FROM books b, wishlist w WHERE w.username = ? AND w.idbook = b.id'

    const [result] = await database.execute(query, [username])
    return result

}

export default{
    addwhishlit,
    getwhishlist
}

