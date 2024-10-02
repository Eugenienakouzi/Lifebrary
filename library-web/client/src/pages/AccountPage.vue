<script setup>
import useAuthenticationService from '../services/authentication-service.js'
import { ref , onMounted } from 'vue'
import resaservice from '../services/reservation-service.js'
const authenticationService = useAuthenticationService()
const findresaService = resaservice();
const books = ref(null)

const user = authenticationService.user

onMounted( async Print => {
    try{
        const response = await findresaService.printreservation(user.username)
    console.log(response.data.resa)
    books.value = response.data.resa
    }catch(error){
        console.log(error)
    }
})

</script>

<template>
  <main>
    <div class="account-page">
      <h2>My Account</h2>
      <div class="user-data">
        {{ console.log(user) }}
        <p><strong class="bold-text">Username:</strong> {{ user.username }}</p>
        <p><strong class="bold-text">Name:</strong> {{ user.name }}</p>
      </div>
    </div>
    <h2>Your Reservation :</h2>
    <ul>
      <li v-for="(book, index) in books" :key="index">
        {{ book.title }}
      </li>
    </ul>
  </main>
</template>


<style scoped>
.bold-text {
  font-weight: bold;
}

.account-page {
  text-align: center;
}

.user-data {
  margin-top: 20px;
  
}

h2
{
  color : #209E82;
  font-weight: bold;
  font-family:  Baguet Script;
  text-align: center;

}
ul{
  text-align: center;
  list-style: none;
}
</style>