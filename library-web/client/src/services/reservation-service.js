import axios from 'axios'

const addreservation = async (username , id) => {
    try {
      const response = await axios.post(`/reservation/add/${id}`, { username })

      return response
    } catch (error) {
      return handleError(error)
    }
}

const printreservation = async (username) => {
    try {
      const response = await axios.get(`/reservation/print`, {username})

      return response
    } catch (error) {
      return handleError(error)
    }

}

export default function reservationService(){
    return{
        addreservation,
        printreservation
    }
    
}