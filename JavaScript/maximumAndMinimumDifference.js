function maxAndMin(arr1, arr2) {
  let result = [];

  arr1.forEach((each1) => {
    let index = 0;
    arr2.forEach((each2) => result.push(each2 - each1));
    index += 1;
  });

  const maxDifference = Math.max(...result.map(Math.abs));
  const minDifference = Math.min(...result.map(Math.abs));

  return [maxDifference, minDifference];
}

console.log(maxAndMin([3, 10, 5], [20, 7, 15, 8]));
// [17,2]
