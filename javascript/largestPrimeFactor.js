//Project URL: http://projecteuler.net/problem=3
//Largest prime factor
//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?


ill come back to finish this lesson!!
var input = 600851475143;

var x = new Array();
var i = 0;

for ( var i = 0; i < input; i++){
	if (input % i === 0 ){
		x.push(i);
	}
}


will come back to finish this lesson!!

console.log(x[-1]);
