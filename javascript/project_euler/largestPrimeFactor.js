//Project URL: http://projecteuler.net/problem=3
//Largest prime factor
//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?


var factor = 2;

function LargestPrime(number) {
        while(number != factor) {
            if (number % factor === 0) {
                number = number / factor;
            } else {factor += 1}
        }
        
//        console.log(factor);

        function writePrime(factor) {
            return factor;
        }
        
        console.log(writePrime(factor))

}
LargestPrime(600851475143);
