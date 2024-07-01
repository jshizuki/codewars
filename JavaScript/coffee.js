function coffee(str) {
  return str.replace(/\bcoffee\b/gi, "COFFEE");
  // g ensures all occurrences of "coffee", while i makes search case-insensitive
}

console.log(coffee("Did I only have two cups of coffee! this morning? I need more."))
