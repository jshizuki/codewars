function findAverage(array) {
  return array.length === 0
    ? 0
    : array.reduce((acc, curVal) => acc + curVal) / array.length;
}

console.log(findAverage([1, 2, 3]));
