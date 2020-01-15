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
            title: "Andrew Ng - Mar 2019 - 1 Course",
            icon: "/course_icons/coursera.png",
            link: "https://www.coursera.org/account/accomplishments/certificate/EX9NVYCWMK3Z?utm_medium=certificate&utm_source=link&utm_campaign=copybutton_certificate&utm_term=long"
        },
        {
            name: "Algorithm Specialization",
            title: "Stanford - Apr 2019 - 4 Courses",
            icon: "/course_icons/coursera.png",
            link: "https://www.coursera.org/account/accomplishments/certificate/9SHZHU9Y9CSM?utm_medium=certificate&utm_source=link&utm_campaign=copybutton_certificate&utm_term=long"
        },
        {
            name: "Google Cloud Codelabs",
            title: "Qwiklabs - May 2019 - 4 Quests",
            icon: "/course_icons/qwiklabs.png",
            link: "https://www.qwiklabs.com/public_profiles/6ac6a81b-25e1-4f9f-b425-603bf75decdc"
        },
        {
            name: "Deep Learning Specialization",
            title: "Andrew Ng - Jul 2019 - 5 Courses",
            icon: "/course_icons/coursera.png",
            link: "https://www.coursera.org/account/accomplishments/specialization/certificate/PTWLA7FKQHYQ?utm_medium=certificate&utm_source=link&utm_campaign=copybutton_certificate&utm_term=long"
        },
        {
            name: "Machine Learning on GCP",
            title: "Google Cloud - Jul 2019- 5 Courses",
            icon: "/course_icons/coursera.png",
            link: "https://www.coursera.org/account/accomplishments/specialization/certificate/KJNLLDZV6E2H?utm_medium=certificate&utm_source=link&utm_campaign=copybutton_certificate&utm_term=long"
        },
        {
            name: "Competitive Programming",
            title: "Coding Ninjas - Dec 2019 - 1 course",
            icon: "/course_icons/ninjas.svg",
            link: "https://ninjasfiles.s3.amazonaws.com/certificate24941636f0a16cbc69f5b121f6d20e0e52dd54.pdf"
        }
        
      ]
    };
  }
};
</script>