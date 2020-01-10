<template>
  <v-app id="bg">
    <!-- header -->
    <Navbar></Navbar>

    <v-content>
      <router-view></router-view>
    </v-content>
  
  </v-app>
</template>

<script>

import Navbar from "@/components/Navbar";

export default {
  components: {Navbar}
};

</script>

<style>
  #bg {
    background-image: url('/bg1.jpg');
    background-color: pink;
    background-size: cover;
    background-repeat: no-repeat;
  }
</style>
