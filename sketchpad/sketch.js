$(document).ready(function(){
  buildGrid(small);
  etch();
  defaultetch();
  clearScreen();
  shader();
  color();
  trailing();
  smallsq();
  mediumsq();
  largesq();
});

var small = 120;
var medium = 60;
var large = 15;
var scrnwidth = 600;
var scrnheight = 400;


//Build Grid - default size is small
var buildGrid = function(x) {
  var squareSize = (scrnwidth/x);
  $('.square').remove();

  for(var i = 0; i < (x*x)*(scrnheight/scrnwidth) ; i++) {
    $('#grid').append("<div class='square'></div>")
  }

  $('.square').width(squareSize);
  $('.square').height(squareSize);
};
