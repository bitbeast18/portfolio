<template>
  <v-container class="mt-10 rounded white">
    <v-card flat class="transparent">
      <v-window v-model="onboarding" vertical>
        <v-window-item v-for="project in projects" :key="project.name">
          <v-container>
            <v-row class="d-flex justify-space-around">
              <v-col cols="4" class="d-flex flex-column">
                <div class="flex-grow-1">
                  <v-card-title>{{project.name}}</v-card-title>
                  <v-card-text>{{project.text}}</v-card-text>
                </div>
                <div class="mt-auto pa-2">
                  <v-btn class="mr-4">View source</v-btn>
                  <v-btn>View demo</v-btn>
                </div>
              </v-col>

              <v-col cols="7" class="ma-0 pa-0">
                <v-img contain :src="project.image"></v-img>
              </v-col>
            </v-row>
          </v-container>
        </v-window-item>
      </v-window>

      <v-card-actions class="mt-8 justify-space-between">
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
    </v-card>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    onboarding: 0,
    projects: [
      {
        name: "Sprint",
        image: "/project1.png",
        text: "A text editor for competitive programmers."
      },
      {
        name: "Personal Portfolio",
        image: "/project2.png",
        text: "Personal Website for showcasing myself."
      },
      {
        name: "Sandbox",
        image: "/project1.png",
        text: "A tool for proctured coding assessments."
      }
    ],
    length: 3
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
