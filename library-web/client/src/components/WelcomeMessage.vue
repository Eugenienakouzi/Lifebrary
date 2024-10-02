<script setup>
import useAuthenticationService from '../services/authentication-service.js'

const authenticationService = useAuthenticationService()
const user = authenticationService.user
</script>

<template>
  <h1 v-if="user">Welcome, {{ user.name }}!</h1>
  <h1 v-else> - Let's find the book of your life ! -</h1>
  
</template>

<style>
  h1{
    color : #209E82;
    text-align: center;
    font-family: Monotype Corsiva;
    font-size: 45px;
  }
</style>