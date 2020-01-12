<template>
  <v-card class="ma-5 transparent elevation-0">
    <v-tabs color="black" centered grow>
      <v-tab v-for="tab in tabs" :key="tab" >{{ tab }}</v-tab>
      <v-tab-item ><Bio></Bio></v-tab-item>
      <v-tab-item><Edu></Edu></v-tab-item>
      <v-tab-item><Crs></Crs></v-tab-item>
      <v-tab-item><TF></TF></v-tab-item>
      <v-tab-item><Achv></Achv></v-tab-item>
    </v-tabs>
  </v-card>
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
           ],
      
    };
  }
};
</script>

<style>
.theme--light.v-tabs-items {
  background-color: transparent;
}

.rounded {
  border-radius: 4px;
}

</style>>
