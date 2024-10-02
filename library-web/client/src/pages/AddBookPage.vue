<script setup>
import { ref, computed, watch } from 'vue'
import { useRouter } from 'vue-router'
import BookForm from '../components/BookForm.vue'
import useAuthenticationService from '../services/authentication-service.js'
import useBookService from '../services/book-service.js'

const router = useRouter()
const authenticationService = useAuthenticationService()
const BookService = useBookService()

const errorMessage = ref('')

const user = authenticationService.user

async function addBook(title, author, year, pageCount, description) {
  errorMessage.value = ''

  const response = await BookService.createBook(title, author, year, pageCount, description)

  if (response.book){
    console.log(response.book.id)
    // router.push({ name: 'Book', params: { id: response.book.id } })
  } else {
    errorMessage.value = response.error.message
  }
}
</script>

<template>
  <main>
    <div v-if="user !== null && user.role === 'librarian'" class="content">
      <BookForm
        primary-button="Add"
        primary-button-class="success"
        :error-message="errorMessage"
        @primary-button-clicked="addBook"
      />
    </div>
    <div v-else class="content">
      <p>You are not authorized to add books.</p>
    </div>
  </main>
</template>


