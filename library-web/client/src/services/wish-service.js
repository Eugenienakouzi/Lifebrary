import axios from 'axios'

const addwishlist = async (username , id) => {
    try {
      const response = await axios.post(`/wishlist/add/${id}`, { username })

      return response
    } catch (error) {
      return handleError(error)
    }
}

const printwishlist = async (username) => {
    try {
      const response = await axios.get(`/wishlist/print` , {username})

      return response
    } catch (error) {
      return handleError(error)
    }

}

export default function wishService(){
    return{
        addwishlist,
        printwishlist
    }
    
}