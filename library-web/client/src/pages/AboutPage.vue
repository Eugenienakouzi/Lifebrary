<script setup></script>

<template>
  <main>
    <div class="content">
      <h1>About us</h1>
      <img src="../assets/IMG_6380.jpg" class="centered-image">

      <div class="team-members">
        <h2>Our Team</h2>
        <ul>
          <li>Soazic Fournier</li>
          <li>Jessica Rasaomanana</li>
          <li>Izmel Bazil-Octuvon</li>
          <li>Eugenie Nakouzi</li>
          <li>Nolan Mornet</li>
          <li>Ewann Chedemail</li>
        </ul>
      </div>

      <div class="library-description">
        <h2>Our Library</h2>
        <p>Welcome to our library, a haven for book enthusiasts and knowledge seekers alike. Immerse yourself in a world of literary wonders as our shelves house a diverse collection of books spanning various genres and subjects. From gripping novels that transport you to far-off lands to insightful non-fiction works that expand your understanding of the world, our library has something for everyone. Whether you're in pursuit of a thrilling adventure, seeking knowledge, or simply looking for a quiet corner to unwind with a good book, our library is your gateway to a world of endless stories and endless possibilities.</p>
      </div>
    </div>
  </main>
</template>

<style scoped>
.centered-image {
  display: block;
  margin: 0 auto;
  max-width: 100%;
  height: auto;
}

.team-members {
  text-align: center;
  margin-top: 20px;
}

.library-description {
  margin-top: 20px;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  margin: 5px 0;
}

h2
{
  color : #209E82;
  font-weight: bold;
  font-family:  Baguet Script;
}
</style>
