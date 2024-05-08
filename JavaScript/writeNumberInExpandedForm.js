function expandedForm(num) {
  const array = num.toString().split("");
  let result = [];

  array.forEach((digit, index) => {
    if (digit !== "0") {
      return result.push(digit * 10 ** (array.length - 1 - index));
    }
  });
  return result.join(" + ");
}

console.log(expandedForm(70304));
