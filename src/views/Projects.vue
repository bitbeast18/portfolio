<template>
  <v-container>
    <v-window v-model="onboarding" vertical>
      <v-window-item v-for="project in projects" :key="project.name">
        <v-row>
          <v-col cols="12">
            <v-card height="75vh" elevation="12">
              <div class="d-flex flex-no-wrap justify-space-between">
                <div>
                  <v-card-title>{{ project.name }}</v-card-title>
                  <v-card-subtitle>{{ project.text }}</v-card-subtitle>
                  <v-card-text>
                    <div>{{ project.text }}</div>
                    <div class="subtitle">{{ project.tools }}</div>
                  </v-card-text>
                </div>
                <v-img :src="project.image"></v-img>
              </div>
            </v-card>
          </v-col>
        </v-row>
      </v-window-item>
    </v-window>

    <v-card-actions class="justify-space-between">
      <v-btn fab x-small @click="prev">
        <v-icon>mdi-chevron-left</v-icon>
      </v-btn>

      <v-item-group v-model="onboarding" class="text-center" mandatory>
        <v-item v-for="n in length" :key="`btn-${n}`" v-slot:default="{ active, toggle }">
          <v-btn :input-value="active" icon @click="toggle">
            <v-icon>mdi-record</v-icon>
          </v-btn>
        </v-item>
      </v-item-group>

      <v-btn fab x-small @click="next">
        <v-icon>mdi-chevron-right</v-icon>
      </v-btn>
    </v-card-actions>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    onboarding: 0,
    projects: [
      {
        name: "Sprint",
        image: "/project1.jpg",
        text: "A text editor for competitive programmers."
      },
      {
        name: "Personal Portfolio",
        image: "/project2.jpg",
        text: "Personal Website for showcasing myself."
      },
      {
        name: "Sandbox",
        image: "/project3.jpg",
        text: "A tool for proctured coding assessments."
      }
    ],
    length: 10
  }),

  methods: {
    next() {
      this.onboarding =
        this.onboarding + 1 === this.length ? 0 : this.onboarding + 1;
    },
    prev() {
      this.onboarding =
        this.onboarding - 1 < 0 ? this.length - 1 : this.onboarding - 1;
    }
  }
};
</script>
