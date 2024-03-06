function narcissistic(value) {
  const array = value.toString().split("");
  let result = 0;
  array.forEach((each) => {
    const number = each ** value.toString().length;
    result += number;
  });
  return result === value;
}

console.log(narcissistic(153));
