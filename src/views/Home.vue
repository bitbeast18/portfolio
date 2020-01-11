<template>
    <div class="base">
        <div class="head">Hello, World!</div>
        <div class="text">
            I'm <span>Harshal Nandigramwar</span>, Competitive programmer,<br/>Cross-platform 
            Full-stack developer and ML/DL practitioner.<br/>I'm open for <span>SDE internships</span>.            
        </div>
        <div class="btn-g">
            <v-btn outlined fab retain-focus-on-click href="https://twitter.com/bitbeast18/" target="_blank">
                <v-icon>fab fa-twitter</v-icon>
            </v-btn>
            <v-btn outlined fab href="https://github.com/bitbeast18" target="_blank">
                <v-icon>fab fa-github</v-icon>
            </v-btn>
            <v-btn outlined fab href="https://www.linkedin.com/in/bitbeast18" target="_blank">
                <v-icon>fab fa-linkedin-in</v-icon>
            </v-btn>
        </div>
    </div>
</template>

<script>


export default {
    
}
</script>

<style scoped>
    .base {
        /* background-color: grey; */
        box-sizing: border-box;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        width: 100%;
        margin-top: 100px;
    }

    .head {
        text-align: center;
        font-size: 80px;
        margin-bottom: 10px;
    }

    .text {
        /* background-color: aquamarine; */
        font-size: 25px;
        text-align: center;
        width: 60%;
    }

    span {
        font-weight: 600;
        font-size: 30px;
    }

    .btn-g {
        margin-top: 45px;
        width: 25%;
        display: flex;
        flex-direction: row;
        justify-content: space-around;
    }
</style>