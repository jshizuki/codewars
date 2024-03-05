// First attempt
function createPhoneNumber(numbers){
  numbers.unshift("(");
  numbers.splice(4, 0, ")");
  numbers.splice(5, 0," ");
  numbers.splice(9, 0, "-");
  return numbers.join("");
}

// Second attempt
function createPhoneNumber(numbers){
  return `(${numbers.slice(0,3).join("")}) ${numbers.slice(3,6).join("")}-${numbers.slice(6).join("")}`
}

console.log(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
