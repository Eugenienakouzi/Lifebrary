<script setup>
import { ref } from 'vue'
import { RouterLink } from 'vue-router'
import useAuthenticationService from '../services/authentication-service.js'

const authenticationService = useAuthenticationService()

const username = ref('')
const password = ref('')
const name = ref('')
const email = ref('')
const signedUp = ref(false)
const successMessage = ref('')
const errorMessage = ref('')

async function signUp() {
  successMessage.value = ''
  errorMessage.value = ''

  const response = await authenticationService.signUp(username.value, password.value, name.value , email.value)

  if (response.error) {
    errorMessage.value = response.error.message
  } else {
    username.value = ''
    password.value = ''
    name.value = ''
    email.value = ''
    signedUp.value = true
    successMessage.value = `Successfully signed up as "${response.username}".`
  }
}
</script>

<template>
  <main>
    <h1> --Sign Up--</h1> 
    <div class="content">
      <form v-if="!signedUp" @submit.prevent="signUp">
        <input type="text" v-model="username" placeholder="Username" class = "username" required />
        <input type="password" v-model="password" placeholder="Password" class = "password" required />
        <input type="text" v-model="name" placeholder="Name" class = " name" required />
        <input type="text" v-model="email" placeholder="Email" class = " email" required />


        <div v-if="errorMessage" class="danger">{{ errorMessage }}</div>
        <button class="success">Sign up</button>
        <div>Already have an account? <RouterLink :to="{ name: 'login' }">Log in</RouterLink></div>
      </form>

      <div class="success-message" v-else>
        <p class="success">{{ successMessage }}</p>
        <p>
          <RouterLink :to="{ name: 'login' }" class="button">Log in</RouterLink>
        </p>
      </div>
    </div>
  </main>
</template>

<style scoped>
main {
  display: flex;
  flex-flow: column nowrap;
  justify-content: top;
  align-items: center;
}

.content {
  width: 100%;
}

.success-message {
  padding: var(--padding-large);
  border: 1px solid var(--color-border);
  border-radius: 0.25rem;
}

@media (min-width: 768px) {
  .success-message {
    max-width: 512px;
    margin: 0 auto;
  }
}

.username{
  background-color: #E3EBE9;
  color: black;

}
.password{
  background-color: #E3EBE9;
  color: black;

}
.name{
  background-color: #E3EBE9;
  color: black;

}
.email{
  background-color: #E3EBE9;
  color: black;


}

 h1{
    color : #209E82;
    text-align: center;
    font-family: Monotype Corsiva;
    font-size: 45px;
    margin-top: 5px;
  }
</style>
