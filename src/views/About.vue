<template>
  <v-card class="ma-5 transparent elevation-0">
    <v-tabs color="black" centered grow>
      <v-tab v-for="tab in tabs" :key="tab" >{{ tab }}</v-tab>
      <v-tab-item><Exp></Exp></v-tab-item>
      <v-tab-item><Edu></Edu></v-tab-item>
      <v-tab-item><Crs></Crs></v-tab-item>
      <v-tab-item><TF></TF></v-tab-item>
      <v-tab-item><Profile></Profile></v-tab-item>
    </v-tabs>
  </v-card>
</template>

<script>

import Exp from '@/components/Exp';
import Edu from '@/components/Edu';
import Crs from '@/components/Crs';
import TF from '@/components/TF';
import Profile from '@/components/Profile';


export default {
    components: {
        Exp,
        Edu,
        Crs,
        TF,
        Profile
    },
  data() {
    return {
      tabs: [
           "Experience", "Education", "Courses", "Tools", "Profiles"
           ],
      
    };
  }
};
</script>

<style>
.theme--light.v-tabs-items {
  background-color: transparent !important;
}

.rounded {
  border-radius: 4px;
}

</style>>
