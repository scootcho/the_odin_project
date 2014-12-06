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


//Small Squares
var smallsq = function(){
  $('#small').on('click', function(){
    screenReset();
    buildGrid(small);
    etch();
  });
};


//Medium Squares
var mediumsq = function(){
  $('#medium').on('click', function(){
    buildGrid(medium);
    screenReset();
    etch();
  });
};


//large Squares
var largesq = function(){
  $('#large').on('click', function(){
    screenReset();
    buildGrid(large);
    etch();
  });
};


//Clear button - Calling screenReset
var clearScreen = function() {
  $('#clear').click(function() {
    screenReset();
  });
};


//Unbind & Reset
var screenReset = function(){
   $('.square').unbind();
   $('.square').css({"background-color": "#E8E8E8", "opacity": "1"});
};
