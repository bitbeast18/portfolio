<template>
  <div>
    <v-container>
      <v-row>
        <v-col class="my-8" v-for="project in projects" :key="project.name" cols="12">
          <v-card height="75vh">
            <div class="d-flex flex-no-wrap justify-space-between">
              <div>
                <v-card-title>{{ project.name }}</v-card-title>
                <v-card-subtitle>{{ project.text }}</v-card-subtitle>
                <v-card-text>
                  <div>{{ project.text }}</div>
                  <div class="subtitle">{{ project.tools }}</div>
                </v-card-text>
              </div>

              <v-image></v-image>
            </div>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        {
          name: "Sprint",
          image: "project1.jpg",
          text: "A text editor for competitive programmers."
        },
        {
          name: "Personal Portfolio",
          image: "project2.jpg",
          text: "Personal Website for showcasing myself."
        },
        {
          name: "Sandbox",
          image: "project3.jpg",
          text: "A tool for proctured coding assessments."
        }
      ]
    };
  }
};
</script>

<style scoped>
</style>