<script setup>
import { RouterLink } from 'vue-router'
import { ref, computed, watch, onMounted } from 'vue'
import { useRoute } from 'vue-router'
import WelcomeMessage from '../components/WelcomeMessage.vue'
import BookItem from '../components/BookItem.vue'
import useBookService from '../services/book-service.js'

const props = defineProps({
  book: {
    type: Object,
    required: true
  }
})

const route = useRoute()
const bookService = useBookService()

const search = computed(() => route.query.search?.trim() ?? '')

const loading = ref(false)
const books = ref([])
const errorMessage = ref('')

onMounted(findBooks)
watch(search, findBooks)

async function findBooks() {
  if (!search.value) {
    books.value = []
    errorMessage.value = ''
    return
  }

  loading.value = true

  const response = await bookService.findBooks({ search: search.value })

  if (response?.books) {
    books.value = response.books
    errorMessage.value = ''
  } else {
    books.value = []
    errorMessage.value = response?.error?.message ?? 'Something went wrong.'
  }

  loading.value = false
}
</script>

<template>
  <main v-if="!search">
    <div class="content">
      <WelcomeMessage />
    </div>
    <h2> Our Favorite </h2>
    <div id="carouselExampleInterval" class="carousel slide mx-auto" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="3000">
          <RouterLink :to="{ name: 'book', params: { id: 1 } }">
          <img src="../img/Book_images/1.png" class="d-block mx-auto custom-size" alt="...">
          </RouterLink>
        </div>
        <div class="carousel-item" data-bs-interval="3000">
          <RouterLink :to="{ name: 'book', params: { id: 2 } }">
            <img src="../img/Book_images/2.png" class="d-block mx-auto custom-size" alt="...">          
          </RouterLink>
        </div>
        <div class="carousel-item" data-bs-interval="3000">
          <RouterLink :to="{ name: 'book', params: { id: 3 } }">
            <img src="../img/Book_images/3.png" class="d-block mx-auto custom-size" alt="...">
          </RouterLink>
        </div>
      </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <div>
  

  </div>

  <table>
    <legend> New Release</legend>
        <tr>
            <td>
              <RouterLink :to="{ name: 'book', params: { id: 15 } }">
              <img src="../img/Book_images/It.jpg" class="d-block mx-auto custom-size" alt="...">
              </RouterLink>
            </td>
            <td>
              <RouterLink :to="{ name: 'book', params: { id: 9 } }">
              <img src="../img/Book_images/catching_fire.jpg" class="d-block mx-auto custom-size" alt="...">
              </RouterLink>
            </td>
            <td>
              <RouterLink :to="{ name: 'book', params: { id: 12 } }">
              <img src="../img/Book_images/murder_on_the_orient_express.jpg" class="d-block mx-auto custom-size" alt="...">
              </RouterLink>
            </td>
            <td>
              <RouterLink :to="{ name: 'book', params: { id: 11 } }">
              <img src="../img/Book_images/the_fault_in_our_stars.jpg" class="d-block mx-auto custom-size" alt="...">
              </RouterLink>
            </td>
            <td>
              <RouterLink :to="{ name: 'book', params: { id: 14 } }">
              <img src="../img/Book_images/looking_for_alaska.jpg" class="d-block mx-auto custom-size" alt="...">
              </RouterLink>
            </td>
        </tr>
  </table>
  </main>

  <main v-else id="main-list">
    <div class="content search-results">
      <ul v-if="books.length > 0">
        <li v-for="book in books" :key="book.id">
          <BookItem :book="book" />
        </li>
      </ul>

      <ul v-else>
        <li>No books were found matching "{{ search }}".</li>
      </ul>
    </div>
  </main>

</template>

<style scoped>
#main-list {
  padding: 0;
}

.search-results {
  display: flex;
  flex-flow: column nowrap;
  align-items: center;
}

ul {
  display: flex;
  flex-flow: column nowrap;
  justify-content: flex-start;
  align-items: stretch;
  width: 100%;
  list-style-type: none;
  padding-inline-start: 0;
}

li {
  padding: var(--padding-medium) var(--padding-large);
}

li:not(:last-child) {
  border-bottom: 1px solid var(--color-border);
}

@media (min-width: 768px) {
  #main-list {
    padding: 0 var(--padding-large);
  }

  ul {
    width: inherit;
    min-width: 512px;
  }

  li {
    padding-left: inherit;
    padding-right: inherit;
  }
}

h2{
  color: #209E82;
  font-family: Monotype Corsiva;
}

.custom-size {
  height: 200px;
  width: auto;
  object-fit: cover;
  width: auto;

}

.carousel-control-prev-icon,
.carousel-control-next-icon {
  filter: invert(100%);
}
legend{
  color: #209E82;
  font-family: Monotype Corsiva;
  font-size: 30px;
}
table {
  border-collapse: collapse;
}

td {
  padding-right: 140px; /* Vous pouvez également utiliser margin à la place de padding */
  padding-left: 100px;
  padding-top: 30px;
}

img {
  max-width: 100%; /* Assure que les images ne dépassent pas la largeur de la cellule */
  height: auto;
  display: block;
  margin: 0 auto; /* Centre les images horizontalement dans la cellule */
}
</style>
