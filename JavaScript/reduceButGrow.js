function grow(x){
  return x.reduce((currentVal, accumalator) => currentVal * accumalator)
}

console.log(grow([4, 1, 1, 1, 4]))
