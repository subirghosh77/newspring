<style>
/*
    .loader {
        position: relative;
        margin: 0 auto;
        width: 30px;
        background-color: white;
        border-radius: 100%;
        padding: 1%;
        box-shadow: 0 1px 2px 1px rgba(32, 33, 36, 0.14);
    }
    .loader:before {
        content: "";
        display: block;
        padding-top: 100%;
    }
    .circular {
        -webkit-animation: rotate 2s linear infinite;
        animation: rotate 2s linear infinite;
        height: 70%;
        transform-origin: center center;
        width: 70%;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
    }
    .path {
        stroke-dasharray: 1, 200;
        stroke-dashoffset: 0;
        -webkit-animation: dash 1.5s ease-in-out infinite, color 6s ease-in-out infinite;
        animation: dash 1.5s ease-in-out infinite, color 6s ease-in-out infinite;
        stroke-linecap: round;
    }

    @-webkit-keyframes rotate {
        100% {
            transform: rotate(360deg);
        }
    }

    @keyframes rotate {
        100% {
            transform: rotate(360deg);
        }
    }
    @-webkit-keyframes dash {
        0% {
            stroke-dasharray: 1, 200;
            stroke-dashoffset: 0;
        }
        50% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -35px;
        }
        100% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -124px;
        }
    }
    @keyframes dash {
        0% {
            stroke-dasharray: 1, 200;
            stroke-dashoffset: 0;
        }
        50% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -35px;
        }
        100% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -124px;
        }
    }
    @-webkit-keyframes color {
        100%, 0% {
            stroke: #d62d20;
        }
        40% {
            stroke: #0057e7;
        }
        66% {
            stroke: #008744;
        }
        80%, 90% {
            stroke: #ffa700;
        }
    }
    @keyframes color {
        100%, 0% {
            stroke: #d62d20;
        }
        40% {
            stroke: #0057e7;
        }
        66% {
            stroke: #008744;
        }
        80%, 90% {
            stroke: #ffa700;
        }
    }
    .showbox {
        position: absolute;
        top: 70%;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 5%;
        width: -webkit-fill-available;
        height: fit-content;
        border: 1px solid red;
        z-index: 98;

    }*/
</style>

<div class="showbox" style="display: none">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
        </svg>
    </div>
</div>