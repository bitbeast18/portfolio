<template>
  <div class="ma-5">
    <v-tabs vertical height="84.5vh">
      <v-tab class="ma-2" color="black" grow v-for="tab in tabs" :key="tab">{{ tab }}</v-tab>
      <v-tab-item><Bio></Bio></v-tab-item>
      <v-tab-item><Edu></Edu></v-tab-item>
      <v-tab-item><Crs></Crs></v-tab-item>
      <v-tab-item><TF></TF></v-tab-item>
      <v-tab-item><Achv></Achv></v-tab-item>
    </v-tabs>
  </div>
</template>

<script>

import Bio from '@/components/Bio';
import Edu from '@/components/Edu';
import Crs from '@/components/Crs';
import TF from '@/components/TF';
import Achv from '@/components/Achv';


export default {
    components: {
        Bio,
        Edu,
        Crs,
        TF,
        Achv
    },
  data() {
    return {
      tabs: [
           "Bio", "Education", "Courses", "Tools", "Achievements"
           ]
    };
  }
};
</script>

<style scoped>
</style>