function scramble(str1, str2) {
  const count = {};

  str1.split("").forEach((letter) => {
    count[letter] === undefined ? (count[letter] = 1) : (count[letter] += 1);
  });

  for (const letter of str2.split("")) {
    if (count[letter] === undefined || count[letter] <= 0) {
      return false;
      break;
    } else {
      count[letter] -= 1;
    }
  }

  return true;
}

console.log(scramble("rkqodlw", "world")); // true
console.log(scramble("cedewaraaossoqqyt", "codewars")); // true
console.log(scramble("katas", "steak")); // false
