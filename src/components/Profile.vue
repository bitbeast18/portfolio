<template>
  <v-container fluid class="d-flex">
    <div class="flex-grow-1">
      <v-row>
        <v-col cols="6" v-for="card in cards" :key="card.name">
          <v-card class="pa-2 fill-height">
            <v-card-title>{{card.name}}</v-card-title>
            <v-card-subtitle>{{ card.subs }}</v-card-subtitle>
            <v-card-actions>
              <v-spacer />
              <v-btn :href="card.link" target="_blank" x-small>View Profile</v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </div>
    <v-container class="pb-2">
      <v-subheader class="headline white rounded mx-2">Achievements</v-subheader>
      <div class="d-flex flex-wrap">
        <v-card v-for="achieve in achieves" :key="achieve.name" class="elevation-3 my-1 mx-2">
          <v-card-title class="subtitle-1 font-weight-bold">{{ achieve.name }}</v-card-title>
          <v-card-subtitle>{{achieve.subs}}</v-card-subtitle>
        </v-card>
      </div>
    </v-container>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      cards: [
        {
          name: "Codeforces",
          subs: "Rating: 1424 - Specialist",
          link: "https://codeforces.com/profile/bitbeast18"
        },
        {
          name: "Codechef",
          subs: "Rating: 1832 - 4 stars",
          link: "https://www.codechef.com/users/bitbeast18"
        },
        {
          name: "Atcoder",
          subs: "Rating: 331 - 9 Kyu",
          link: "https://atcoder.jp/users/bitbeast18"
        },
        {
          name: "Topcoder",
          subs: "Rating: 0",
          link: "https://www.topcoder.com/members/bitbeast18/"
        },
        {
          name: "ICPC ID",
          subs: "ACM ICPC Credentials",
          link: "https://icpc.baylor.edu/ICPCID/NAAW40FY8K54"
        },
        {
          name: "Hackerearth",
          subs: "Rating: 1068",
          link: "https://www.hackerearth.com/@bitbeast18"
        }
      ],

      achieves: [
        {
          name: "ACM ICPC Kanpur Online Contest 2019",
          subs: "Rank: 109"
        },
        {
          name: "Code Raid 2.0",
          subs: "Dec 2019 - Winner"
        },
        {
          name: "Rally Car Design Challenge 2018",
          subs: "Apr 2018 - Winner"
        }
      ]
    };
  }
};
</script>