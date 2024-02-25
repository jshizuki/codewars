function persistence(num) {
  let arrayOfNumbers = Array.from(String(num)).map((string) => Number(string));
  array = [];
  while (!(arrayOfNumbers.length === 1)) {
    let result = arrayOfNumbers.reduce((a, v) => a * v);
    arrayOfNumbers = Array.from(String(result)).map((string) => Number(string));
    array.push(arrayOfNumbers);
  }
  return array.length;
}
