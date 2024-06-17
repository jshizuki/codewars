function twoSum(numbers, target) {
  let result = [];

  for (let i = 0; i < numbers.length; i++) {
    for (let j = 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] === target) {
        result.push(i);
        result.push(j);
        return result;
      }
    }
  }
  return result;
}

console.log(twoSum([1234, 5678, 9012], 14690));
