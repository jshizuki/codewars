function findDifference(a, b) {
  let resultForA = 1;
  let resultForB = 1;
  a.forEach((each) => (resultForA = resultForA * each));
  b.forEach((each) => (resultForB = resultForB * each));
  return resultForA - resultForB < 0
    ? -(resultForA - resultForB)
    : resultForA - resultForB;
}

console.log(findDifference([3, 2, 5], [1, 4, 4]));
