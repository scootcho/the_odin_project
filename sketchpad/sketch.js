

$(document).ready(function(){
  for(var i = 0; i < numSquares; i++) {
    $('.grid').append("<div class='square'></div>")
  }
  $('.square').mouseenter(function(){
    $(this).css("background-color", getColor); //when 
  });

});

var numSquares = 256; //default number of squares



//
function getColor() {
	var red= Math.floor((Math.random()*255));
	var green= Math.floor((Math.random()*255));
	var blue= Math.floor((Math.random()*255));
  return "rgb(" + red + "," + green + "," + blue + ")";
}



//Clear button, this can be refactored into documentready block 
//but is modularized for demonstration purpose.
$(function() {
  $('.clear').click(function() {
  $(".square").css("background", "#E8E8E8");
  });
});

