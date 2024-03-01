function sortArray(array) {
  let oddNumbers = [];
  let sortedOddNumbers = (array.filter(number => !(number % 2 === 0))).sort((a, b) => a - b);

  let sortedOddNumberIndex = 0;
  array.map((number, index) => {
    if (!(number % 2 === 0)) {
      array[index] = sortedOddNumbers[sortedOddNumberIndex];
      sortedOddNumberIndex += 1;
    }
  })
  return array;
}
