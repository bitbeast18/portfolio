<template>
  <v-container class="ctc">
    <v-row>
      <v-col v-for="item in tools" :key="item">
        <v-card height="100px" width="100px" class="pa-4">
          <v-img :contain="true" aspect-ratio="1" :src="`/tool_icons/${item}`"></v-img>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      tools: [
        "aws.png",
        "gcp.png",
        "c.png",
        "cpp.png",
        "python.png",
        "java.png",
        "dart.png",
        "swift.png",
        "html.png",
        "css.png",
        "javascript.png",
        "nodejs.png",
        "sql.png",
        "electron.png",
        "vuejs.png",
        "firebase.png",
        "flutter.png",
        "git.png",
        "jupyter.png",
        "matplotlib.webp",
        "numpy.png",
        "pandas.png",
        "pytorch.png",
        "sklearn.png",
        "tensorflow.png",
        "centos.png",
        "ubuntu.png",
      ]
    };
  }
};
</script>

<style>
.ctc {
  overflow: auto;
}
</style>