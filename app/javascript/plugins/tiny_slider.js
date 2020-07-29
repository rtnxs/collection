import 'tiny-slider/src/tiny-slider'
require("tiny-slider/src/tiny-slider.scss")

import { tns } from "tiny-slider/src/tiny-slider"

document.addEventListener("turbolinks:load", () => {
    var slider = tns({
        container: '.my-slider',
        items: 1,
        mouseDrag: true,
        // controls: false,
        arrowKeys: true,
        nav: false,
        navPosition: "bottom",
        // nextButton: true,
        // prevButton: true,
        responsive: {
            640: {
                edgePadding: 20,
                gutter: 20,
                items: 2
            },
            700: {
                gutter: 30
            },
            900: {
                items: 3
            }
        }


    });
})