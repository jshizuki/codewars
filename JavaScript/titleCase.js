function titleCase(title, minorWords) {
  const words = title.split(" ");
  let exceptions;

  if (minorWords !== undefined) {
    exceptions = minorWords.split(" ");
    exceptions = exceptions.map((each) => each.toLowerCase());
  }

  return title == ""
    ? ""
    : words
        .map((word, index) => {
          const wordLowerCase = word.toLowerCase();
          if (
            minorWords !== undefined &&
            exceptions.includes(wordLowerCase) &&
            index !== 0
          ) {
            return wordLowerCase;
          } else {
            return wordLowerCase.replace(
              wordLowerCase[0],
              wordLowerCase[0].toUpperCase()
            );
          }
        })
        .join(" ");
}

// console.log(titleCase("a clash of KINGS", "a An the of"));
console.log(titleCase("the quick brown fox"));
// console.log(titleCase("THE WIND IN THE WILLOWS", "The In"));
// console.log(titleCase(""));
