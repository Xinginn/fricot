<template>
  <nav class="d-flex justify-content-between align-items-center">

    <div>
      <span>Commande à emporter</span>
    </div>
    
    <div>
      <span>
        <font-awesome-icon :icon="['fas', 'location-dot']" /> Mon adresse</span>
      <span> | </span>
      <span><font-awesome-icon :icon="['fas', 'store']" /> Magasin</span>
      
    </div>

    <div class="d-flex justify-content-between">
      <div style="margin:20px">
        Panier
      </div>
      <div style="margin:20px">
        Profil
      </div>
    </div>
  </nav>
</template>

<script>

export default {
  name: 'NavBar'
}
</script>

<style scoped>
nav {
  height: 80px;
  margin-bottom: 62px;

  background-color: #F0F0F0;
  color: #000;
  font-family: Inter;
  font-size: 24px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  padding-left: 20px;
}

</style>
