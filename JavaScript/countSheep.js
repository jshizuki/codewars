const countSheep = (num) => {
  let sheep = " sheep...";
  let murmur = [];
  for (let number = 0; number < num; number++) {
    stringNum = String(number + 1);
    murmur.push(stringNum + sheep);
  }
  return murmur.join("");
};

console.log(countSheep(3));
