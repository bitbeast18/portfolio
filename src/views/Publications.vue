<template>
    <v-container>
        <v-row>
            <v-col cols="4" v-for="card in cards" :key="card.id">
                <v-card class="d-flex flex-column pa-3" height="100%">
                    <v-card-title style="word-break:normal !important;"> {{ card.title }} </v-card-title>
                    <v-card-subtitle> {{ card.subtitle }} </v-card-subtitle>
                    <v-card-text> {{ card.text }}</v-card-text>
                    <v-card-actions class="mt-auto">
                        <v-spacer></v-spacer>
                        <v-btn :href="card.link" target="_blank"> View {{card.subtitle}} </v-btn>
                    </v-card-actions>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    data(){
        return {
            cards:[
                {
                    id: 1,
                    title: "Siamese Networks: Visualising the interesting parts",
                    subtitle: "Blog",
                    link: "https://google.com", 
                    text: "Siamese Networks is the model behind most face recognition technology. This article investigates the various parts that powers it."
                },
                
            ]
        }
    }
}
</script>
