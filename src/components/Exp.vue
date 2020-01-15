<template>
  <v-container>
    <v-timeline :dense="$vuetify.breakpoint.smAndDown">
      <v-timeline-item v-for="job in jobs" :key="job.id">
        <template v-slot:icon>
          <v-avatar class="white pa-2" size="60">
            <v-img contain :src="job.icon"></v-img>
          </v-avatar>
        </template>

        <template v-slot:opposite>
          <span class="elevation-3 rounded font-weight-bold pa-2 text-center white">{{job.time}}</span>
        </template>

        <v-card>
          <v-card-title>{{job.title}}</v-card-title>
          <v-card-subtitle>{{job.content}}</v-card-subtitle>
        </v-card>
      </v-timeline-item>
    </v-timeline>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      jobs: [
        {
          id: 1,
          title: "Campus Ambassador",
          time: "Jan 2020 - Current",
          content: "Programming Pathshala",
          icon: "/course_icons/ppa.jpeg"
        },
        {
          id: 2,
          title: "Teaching Assistant",
          time: "Aug 2019 - Dec 2019",
          content: "Coding Ninjas India",
          icon: "/course_icons/ninjas.svg"
        }
      ]
    };
  }
};
</script>