<template>
    <v-container>
        <v-timeline :dense="$vuetify.breakpoint.smAndDown">
            <v-timeline-item v-for="edu in edus" :key="edu.name">
                <template v-slot:opposite>
                    <span class="elevation-3 rounded font-weight-bold pa-2 text-center white"> {{edu.year}} </span>
                </template>
                <v-card>
                    <v-card-title> {{ edu.name }} </v-card-title>
                    <v-card-subtitle> {{ edu.course }} </v-card-subtitle>
                    <v-card-text> {{ edu.grade }} </v-card-text>
                </v-card>
            </v-timeline-item>
        </v-timeline>
    </v-container>
</template>

<script>
export default {
    data() {
        return {
            edus: [
                {
                    name: "Lovely Professional University",
                    course: "BTech in Computer Science & Engineering",
                    grade: "Current CGPA: 9.05",
                    year: "2017 - 2021"
                },
                {
                    name: "Narayana Junior College",
                    course: "12th Grade (MPC)",
                    grade: "Scored 94.8%",
                    year: "2015 - 2016"
                },
                {
                    name: "Chanda Public School",
                    course: "10th Grade CBSE",
                    grade: "Scored 10 CGPA",
                    year: "2013 - 2014"
                }
            ]
        }
    }
}
</script>

