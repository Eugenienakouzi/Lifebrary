<script setup>
import wishService from '../services/wish-service.js'
import { ref , onMounted } from 'vue'
import useAuthenticationService from '../services/authentication-service.js'
const authenticationService = useAuthenticationService()
const findwishService = wishService();
const user = authenticationService.user
const books = ref(null)

onMounted( async Print => {
    try{
        const response = await findwishService.printwishlist(user.username)
    console.log(response.data.reservation)
    books.value = response.data.reservation
    }catch(error){
        console.log(error)
    }
})
</script>

<template>
    <main>
        <h2>Your Wishlist : </h2>
    <ul>
      <li v-for="(book, index) in books" :key="index">
        {{ book.title }}
      </li>
    </ul>
        
    </main>
</template>

<style scoped>
h2
{
  color : #209E82;
  font-weight: bold;
  font-family:  Baguet Script;
  text-align: center;

}

ul{
    list-style: none;
    text-align: center;
}

</style>