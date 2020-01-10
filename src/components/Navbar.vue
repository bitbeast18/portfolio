<template>
  <div>
    <v-app-bar app elevate-on-scroll class="transparent">

      <v-toolbar-title>
        <span>{{ fname }}</span>
        <span class="font-weight-bold">{{ lname }}</span>
      </v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn v-for="btn in routes" 
              :key="btn.name" 
              text
              router 
              :to="btn.link"
              exact>{{ btn.name }}
      </v-btn>
      

    </v-app-bar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      fname: "HN/",
      lname: "bitbeast",
      routes: [
        {
          name: "home",
          link: "/"
        },
        {
          name: "about",
          link: "/about"
        },
        {
          name: "projects",
          link: "/projects"
        },
        {
          name: "blog",
          link: "/blogs"
        },
        {
          name: "contact",
          link: "/contact"
        }
      ]
    }
  }
}
</script>
