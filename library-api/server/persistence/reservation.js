import database from './database.js'

const addreservation = async (username, id) => {
    const query = 'insert into `reservation`(username, idbook) value (?, ?)'
    console.log(username)
    console.log(id)
    const [result] = await database.execute(query, [username, id])
    if (result.affectedRows === 0) {
        throw new Error(`Failed to add to the reservation.`)
      }
}

const getreservation = async (username) => {
    const query = 'SELECT DISTINCT b.title FROM books b, reservation r WHERE r.username = ? AND r.idbook = b.id'
    const [result] = await database.execute(query, [username])
    return result

}

export default{
    addreservation,
    getreservation
}

