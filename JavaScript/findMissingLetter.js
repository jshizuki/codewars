function findMissingLetter(array) {
  const firstChar = array[0].charCodeAt(0);
  const lastChar = array[array.length - 1].charCodeAt(0);

  const fullArray = Array.from({ length: lastChar - firstChar + 1 }, (_, i) =>
    String.fromCharCode(firstChar + i)
  );

  return fullArray.find((letter) => !array.includes(letter));
}

console.log(findMissingLetter(["O", "Q", "R", "S"]));
