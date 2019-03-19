$(document).ready(function() {

    $(".all p").hide();
    $(".fantasy").hide();
    $(".informatyka").hide();
    $(".dramat").hide();
    $(".science_fiction").hide();
    $(".wojenne").hide();
    $(".przygodowe").hide();


    var headerHeight = $('#header').outerHeight(); // wysokość menu nawigacyjnego

    $('#menu ul li a').click(function(e) {

        var targetHref = $(this).attr('href');

        $('html, body').animate({
            scrollTop: $(targetHref).offset().top-headerHeight  //scroolowanie animacją z uwzględnieniem menu nawigacyjnego
        }, 1000);

        e.preventDefault();
    });

});

$(".all").click(function () {
    $(".all p").toggle();
});

$(".fantasy").click(function () {
    $(".fantasy p").toggle();
});

$(".dramat").click(function () {
    $(".dramat p").toggle();
});

$(".wojenne").click(function () {
    $(".wojenne p").toggle();
});

$(".przygodowe").click(function () {
    $(".przygodowe p").toggle();
});

$(".informatyka").click(function () {
    $(".informatyka p").toggle();
});

$(".science_fiction").click(function () {
    $(".science_fiction p").toggle();
});

$("#button_fantasy").click(function(){
    $(".fantasy").toggle();
    $(".fantasy p").hide();
    $(".informatyka").hide();
    $(".dramat").hide();
    $(".science_fiction").hide();
    $(".przygodowe").hide();
    $(".wojenne").hide();
});

$("#button_informatyka").click(function(){
    $(".informatyka").toggle();
    $(".informatyka p").hide();
    $(".fantasy").hide();
    $(".dramat").hide();
    $(".science_fiction").hide();
    $(".przygodowe").hide();
    $(".wojenne").hide();
});

$("#button_dramat").click(function(){
    $(".dramat").toggle();
    $(".dramat p").hide();
    $(".informatyka").hide();
    $(".fantasy").hide();
    $(".science_fiction").hide();
    $(".przygodowe").hide();
    $(".wojenne").hide();
});

$("#button_science_fiction").click(function(){
    $(".science_fiction").toggle();
    $(".science_fiction p").hide();
    $(".dramat").hide();
    $(".informatyka").hide();
    $(".fantasy").hide();
    $(".przygodowe").hide();
    $(".wojenne").hide();
});

$("#button_wojenne").click(function(){
    $(".wojenne").toggle();
    $(".wojenne p").hide();
    $(".przygodowe").hide();
    $(".dramat").hide();
    $(".informatyka").hide();
    $(".fantasy").hide();
    $(".science_fiction").hide();
});

$("#button_przygodowe").click(function(){
    $(".przygodowe").toggle();
    $(".przygodowe p").hide();
    $(".dramat").hide();
    $(".informatyka").hide();
    $(".fantasy").hide();
    $(".science_fiction").hide();
    $(".wojenne").hide();
});

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("slajdy");
    if (n > slides.length) {slideIndex = 1} //gdy dojedziemy w prawo do końca to wracamy do początku
    if (n < 1) {slideIndex = slides.length} //gdy dojedziemy w lewo do końca to wracamy do końca
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideIndex-1].style.display = "block";
}
//pokazanie pierwszego slajdu
var slideIndex = 1;
showSlides(slideIndex);

//przesuwanie w prawo
function plusSlides(n) {
    showSlides(slideIndex += n);
}

//przesuwanie w lewo
function minusSlides(n) {
    showSlides(slideIndex -= n);
}