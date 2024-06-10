function isPrime(num) {
  if (num < 0 || num === 1) {
    return false;
  } else {
    const squareRoot = Math.floor(Math.sqrt(num));
    const arrayOfNumbers = Array.from(
      { length: squareRoot },
      (_, index) => index + 1
    );
    const result = [];

    const numberOfZeros = arrayOfNumbers.map((each) => {
      num % each === 0 ? result.push(0) : result;
    });

    return result.length === 1 ? true : false;
  }
}

console.log(isPrime(-5));
