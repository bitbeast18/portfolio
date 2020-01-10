<template>
  <div>
    <v-app-bar>

      <v-toolbar-title>
        <span>{{ fname }}</span>
        <span>{{ lname }}</span>
      </v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn text>Home</v-btn>
      <v-btn text>About</v-btn>
      <v-btn text>Projects</v-btn>
      <v-btn text>Blogs</v-btn>
      <v-btn text>Contact</v-btn>

    </v-app-bar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      fname: "HARSHAL ",
      lname: "NANDIGRAMWAR"
    }
  }
}
</script>
