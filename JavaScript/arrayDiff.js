function arrayDiff(arr1, arr2) {
  if (arr2[0] === undefined) {
    return arr1
  } else {
    arr1.map((num, index) => arr2.includes(num) ? delete arr1[index] : num)
    return arr1.filter(each => each !== undefined)
  }
}

console.log(arrayDiff([1,2,3], [1,2]))
