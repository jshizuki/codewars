function incrementString (strng) {
  const array = strng.match(/[a-zA-Z]+|\d+/g)
  // console.log(array)

  let result = array.map((each, index) => {
    if (!isNaN(each) && index === array.length - 1) {
      const original_digits = each
      each = (parseInt(each) + 1).toString()
      return each.padStart(original_digits.length, "0")
    } else if (isNaN(each) && array.length === 1) {
      return each + "1"
    } else {
      return each
    }
  })
  return result.join("")
}
console.log(incrementString("foobar000"))
