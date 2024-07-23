function score(dice) {
  count = {};
  let totalScore = 0;

  dice.forEach((each) => {
    count[each] === undefined ? (count[each] = 1) : (count[each] += 1);
  });

  const countTriple = (number, baseScore) => {
    count[number] >= 3 && (totalScore += baseScore, count[number] -= 3);
  };

  const countRemainingNumbers = (value, individualScore) => {
    totalScore += (value !== undefined ? value * individualScore : 0)
  };

  countTriple("1", 1000);
  countTriple("2", 200);
  countTriple("3", 300);
  countTriple("4", 400);
  countTriple("5", 500);
  countTriple("6", 600);

  countRemainingNumbers(count["1"], 100);
  countRemainingNumbers(count["5"], 50);

  return totalScore;
}

console.log(score([1, 1, 1, 3, 1]));
console.log(score([5, 1, 3, 4, 1]));
console.log(score([2, 4, 4, 5, 4]));
