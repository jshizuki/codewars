function divisors(integer) {
  let array = [];
  for (let i = 1; i <= integer; i++) {
    array.push(i);
  }
  const result = array.filter((num) => {
    return integer % num === 0;
  });
  if (result.length === 2) {
    return `${integer} is prime`;
  } else {
    return result.slice(1, -1);
  }
}

console.log(divisors(12));
