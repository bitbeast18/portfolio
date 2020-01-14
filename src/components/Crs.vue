<template>
  <v-container>
    <v-row>
      <v-col cols="4" v-for="course in courses" :key="course.name">
        <v-card class=pa-2>
          <div class="d-flex flex-no-wrap justify-space-between">
            <v-avatar tile height="100px" width="100px">
              <v-img :contain="true" :src="course.icon" />
            </v-avatar>
            <div>
              <v-card-title class="subtitle-1 font-weight-bold">{{course.name}}</v-card-title>
              <v-card-subtitle class="caption">{{course.title}}</v-card-subtitle>
              <v-card-actions>
                  <v-spacer/>
                <v-btn x-small :href="course.link" target="_blank">View credential</v-btn>
              </v-card-actions>
            </div>
          </div>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      courses: [
        {
            name: "AI for Everyone",
            title: "Andrew Ng - Mar 2019 - 1 course",
            icon: "/course_icons/coursera.png",
            link: "https://google.com"
        },
        {
            name: "Algorithm Specialization",
            title: "Stanford - Apr 2019 - 4 courses",
            icon: "/course_icons/coursera.png"
        },
        {
            name: "Google Cloud Codelabs",
            title: "Qwiklabs - May 2019 - 3 quests",
            icon: "/course_icons/qwiklabs.png"
        },
        {
            name: "Deep Learning Specialization",
            title: "Andrew Ng - Jul 2019 - 5 courses",
            icon: "/course_icons/coursera.png"
        },
        {
            name: "Machine Learning on GCP",
            title: "Google Cloud - Jul 2019- 5 courses",
            icon: "/course_icons/coursera.png"
        },
        {
            name: "Competitive Programming",
            title: "Coding Ninjas - Dec 2019 - 1 course",
            icon: "/course_icons/ninjas.svg"
        }
        
      ]
    };
  }
};
</script>