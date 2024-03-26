function diamond(n) {
  if (n < 0 || n % 2 === 0) {
    return null;
  }

  let diamond = "*";
  let result = [];
  let starOfEachLine = 1;

  for (let i = 0; i < n; i++) {
    let space = " ";
    space = space.repeat((n - starOfEachLine) / 2);
    let resultOfEachLine = space
      .concat(diamond.repeat(starOfEachLine))
      .concat("\n");
    result.push(resultOfEachLine);
    result.length < Math.ceil(n / 2)
      ? (starOfEachLine += 2)
      : (starOfEachLine -= 2);
  }
  return result.join("");
}

console.log(diamond(9));
