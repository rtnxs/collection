import 'lightbox2/dist/js/lightbox.min'
require("lightbox2/dist/css/lightbox.min.css")

document.addEventListener("turbolinks:load", () => {
    $(document).on('click', '[data-toggle="lightbox"]', function (event) {
        event.preventDefault();
        $(this).Lightbox();
    });
})
