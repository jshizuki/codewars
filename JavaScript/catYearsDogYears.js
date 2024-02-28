const humanYearsCatYearsDogYears = (humanYears) => {
  let result = [];
  result.push(humanYears);

  let cat = 0;
  if (humanYears === 1) {
    cat = 15;
  } else if (humanYears === 2) {
    cat = 15 + 9;
  } else {
    cat = 15 + 9 + (humanYears - 2) * 4;
  }
  result.push(cat);

  let dog = 0;
  if (humanYears === 1) {
    dog = 15;
  } else if (humanYears === 2) {
    dog = 15 + 9;
  } else {
    dog = 15 + 9 + (humanYears - 2) * 5;
  }
  result.push(dog);
  return result;
};
