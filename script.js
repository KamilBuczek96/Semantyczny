$(document).ready(function() {

    var headerHeight = $('#header').outerHeight(); // wysokość menu nawigacyjnego

    $('#menu ul li a').click(function(e) {

        var targetHref = $(this).attr('href');

        $('html, body').animate({
            scrollTop: $(targetHref).offset().top-headerHeight  //scroolowanie animacją z uwzględnieniem menu nawigacyjnego
        }, 1000);

        e.preventDefault();
    });


});

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("slajdy");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideIndex-1].style.display = "block";
}
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}