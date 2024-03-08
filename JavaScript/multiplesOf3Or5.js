function solution(number) {
  let array = [];
  for (let i = 1; i < number; i++) {
    array.push(i);
  }
  return array
    .filter((each) => {
      return each % 3 === 0 || each % 5 === 0;
    })
    .reduce((total, current) => total + current, 0);
}

console.log(solution(10));
