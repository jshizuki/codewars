function changer(str) {
  let arrayOfLetters = Array.from({ length: 26 }, (_, i) =>
    String.fromCharCode(97 + i)
  );
  const str_split = str.split("");
  arrayOfLetters.push("a");
  arrayOfLetters.replace();

  const result = str_split.map((each) => {
    if (each === each.toLowerCase() && arrayOfLetters.includes(each)) {
      const result = arrayOfLetters[arrayOfLetters.indexOf(each) + 1];
      return /[aeiou]/.test(result) ? result.toUpperCase() : result;
    } else if (
      each !== each.toLowerCase() &&
      arrayOfLetters.includes(each.toLowerCase())
    ) {
      const result =
        arrayOfLetters[arrayOfLetters.indexOf(each.toLowerCase()) + 1];
      return /[aeiou]/.test(result) ? result.toUpperCase() : result;
    } else {
      return each;
    }
  });
  return result.join("");
}

console.log(changer("Alice"));
