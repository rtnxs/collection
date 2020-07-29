import 'tiny-slider/src/tiny-slider'
require("tiny-slider/src/tiny-slider.scss")

import { tns } from "tiny-slider/src/tiny-slider"

document.addEventListener("turbolinks:load", () => {
    var slider = tns({
        container: '.my-slider',
        items: 1,
        mouseDrag: true,
        arrowKeys: true,
        nav: false,
        autoplay: true,
        autoplayButtonOutput: false,
                responsive: {
            500: {
                gutter: 20,
                items: 2
            },
            640: {
                gutter: 20,
                items: 2
            },
            700: {
                gutter: 30,
                items: 2
            },
            900: {
                gutter: 30,
                items: 3
            }
        }
    });
})