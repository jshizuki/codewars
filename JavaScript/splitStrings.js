function solution(str) {
  const arr = str.split("");
  const result = arr.map((letter, i) => {
    if (i % 2 === 0) {
      if (arr.length % 2 !== 0 && arr.length - 1 === i) {
        return letter + "_";
      }
      return letter + arr[i + 1];
    }
  });
  return result.filter((each) => each !== undefined);
}

console.log(solution("abc"));
