<template>
  <div id="app">
      <Header></Header>
      <router-view></router-view>
  </div>
</template>

<script>
    import firebase from "firebase";
    import Header from "./components/Header.vue";
    import profile from "./components/profile.vue";
    import home from "./components/home.vue";
   import {dataRef} from "./database.js";
    import {donationsRef} from "./database.js";


export default {
    name: 'app',
    computed:{
        //returns the current user's email
        currentUser(){
            return this.$store.state.currentUser;
        }
    },
    firebase: {
        data: dataRef,
        donations: donationsRef
    },
    data () {
        return {
        }
    },
    components:{
        Header,
        profile,
        home,
        //login
    },
    created () {
        // when the page is reloaded, the user will still be logged in
        firebase.auth().onAuthStateChanged((firebaseUser) => {
          if (firebaseUser) {
              this.$store.dispatch('autoSignIn',firebaseUser)
          }
        })
    }
};

</script>

<style scoped>
    #app {
      font-family: 'Avenir', Helvetica, Arial, sans-serif;
      text-align: center;
      color: #2c3e50;
      margin-top:30px;
    }
</style>
