function duplicateEncode(word){
  const countOccurences = {};
  const array = word.toLowerCase().split("")

  array.map(each => {
    return countOccurences[each] === undefined ? countOccurences[each] = 1 : countOccurences[each] += 1
  })

  return array.map(each => {
    return countOccurences[each] === 1 ?  "(" : ")"
  }).join("")
}

console.log(duplicateEncode("CodeWarrior"))
