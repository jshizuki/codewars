function inArray(array1, array2) {
  const result = [];
  array2.forEach((str) => {
    array1.forEach((substr) => {
      if (str.includes(substr)) {
        result.push(substr);
      }
    });
  });
  return [...new Set(result.sort())];
}

console.log(
  inArray(
    ["arp", "live", "strong"],
    ["lively", "alive", "harp", "sharp", "armstrong"]
  )
);
