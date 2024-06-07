var number = function(busStops){
  const result = []
  busStops.forEach(each => result.push(each[0] - each[1]))
  return result.reduce((a, b) => a + b)
}

console.log(number([[10,0],[3,5],[5,8]]))
