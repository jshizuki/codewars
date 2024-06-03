function solution(number) {
  const number_split = number.toString().split("");
  // console.log(number_split);

  symbols = {
    1: "I",
    5: "V",
    10: "X",
    50: "L",
    100: "C",
    500: "D",
    1000: "M",
  };

  const result = [];
  let length = number_split.length - 1;
  const placeValue = 1;

  number_split.forEach((digit) => {
    if (digit != 0) {
      const zeros = "0".repeat(length);
      const element = digit + zeros;
      if (element[0] <= "3") {
        const times = element / (placeValue + zeros);
        for (let i = 0; i < times; i++) {
          result.push(symbols[placeValue + zeros]);
        }
      } else if (element[0] === "4") {
        result.push(symbols["1" + zeros]);
        result.push(symbols["5" + zeros]);
      } else if (element[0] === "9") {
        result.push(symbols["1" + zeros]);
        result.push(symbols["10" + zeros]);
      } else if (element[0] >= 5) {
        result.push(symbols["5" + zeros]);
        for (let i = 0; i < element[0] - 5; i++) {
          result.push(symbols["1" + zeros]);
        }
      }
    }
    length -= 1;
  });
  return result.join("");
}

// console.log(solution(3491));
// console.log(solution(1666));
console.log(solution(4));
// console.log(solution(2000));
// console.log(solution(2007));
// console.log(solution(3999));
