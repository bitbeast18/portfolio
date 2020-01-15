<template>
  <v-container fill-height>
    <v-row class="justify-space-between">
      <v-col cols="5" class="flex-grow-0">
        <v-card class="px-4 d-flex ma-4 elevation-10" v-for="item in items" :key="item.name">
          <v-icon large>{{item.icon}}</v-icon>
          <div>
            <v-card-title>{{item.name}}</v-card-title>
            <v-card-subtitle>{{item.type}}</v-card-subtitle>
          </div>
        </v-card>
      </v-col>

      <v-col cols="6" class=" elevation-15 flex-grow-1 pa-5 white rounded">
        <v-form ref="form">
          <v-container class>
            <v-row dense>
              <v-col cols="12">
                <v-text-field
                  :rules="nameRules"
                  required
                  v-model="first"
                  label="First Name"
                  outlined
                ></v-text-field>
              </v-col>

              <v-col cols="12">
                <v-text-field :rules="nameRules" required v-model="last" label="Last Name" outlined></v-text-field>
              </v-col>

              <v-col cols="12">
                <v-text-field :rules="emailRules" required v-model="mail" label="Email" outlined></v-text-field>
              </v-col>

              <v-col cols="12">
                <v-textarea
                  v-model="purpose"
                  no-resize
                  outlined
                  required
                  :rules="textRules"
                  rows="4"
                  row-height="15"
                  label="Why do you want to contact?"
                ></v-textarea>
              </v-col>
              <v-card-actions>
                <v-btn @click="reset" class="mr-5">Reset</v-btn>
                <v-btn @click="submit">Submit</v-btn>
              </v-card-actions>
            </v-row>
          </v-container>
          <v-snackbar v-model="snackbar">
              {{ msg }} <v-btn dark small @click="snackbar = false"> Close </v-btn>
          </v-snackbar>
        </v-form>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          name: "pro.bbcom18@gmail.com",
          type: "Email",
          icon: "fas fa-envelope"
        },
        {
          name: "/bitbeast18",
          type: "Github",
          icon: "fab fa-github"
        },
        {
          name: "bitbeast18.github.io",
          type: "Website",
          icon: "fas fa-globe"
        }
      ],
      snackbar: false,
      msg: "",
      first: "",
      last: "",
      mail: "",
      purpose: "",
      nameRules: [v => !!v || "Name is required"],
      emailRules: [
        v => !!v || "Email is required",
        v => /.+@.+/.test(v) || "Invalid Email"
      ],
      textRules: [
        v => !!v || "Please write something",
        v => v != undefined && v.length > 10 || "That's too short"
      ]
    };
  },
  methods: {
    submit() {
      if (this.$refs.form.validate()) {
        this.$refs.form.reset();
        this.msg = "Successsfully submitted!"
      } else {
          this.msg = "Invalid details!"
      }
      this.snackbar = true;
    },
    reset() {
        this.$refs.form.reset();
    }
  }
};
</script>