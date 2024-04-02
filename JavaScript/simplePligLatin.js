function pigIt(str){
  split_words = str.split(" ")
  let result = split_words.map(word => {
    if (/^[!?,.;:]+$/.test(word)) {
      return word
    } else {
      const first_letter = word[0]
      let array = word.split("")
      array.shift()
      return array.join("") + first_letter + "ay"
    }
  })
  return result.join(" ")
}

console.log(pigIt('Pig latin is cool'))
