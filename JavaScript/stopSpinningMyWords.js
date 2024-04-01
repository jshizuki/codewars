function spinWords(string) {
  let array = string.split(" ").map((word) => {
    return (word.length >= 5) ? word.split("").reverse().join("") : word
  })
  return array.join(" ")
}

console.log(spinWords("You are almost to the last test"));
