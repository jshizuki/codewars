function isValidWalk(walk) {
  let [x, y] = [0, 0];

  if (walk.length !== 10) {
    return false;
  }

  for (let dir of walk) {
    switch (dir) {
      case "n": y += 1; break;
      case "e": x += 1; break;
      case "s": y += -1; break;
      case "w": x += -1; break;
    }
  }
  return x === 0 && y === 0 ? true : false;
}

console.log(isValidWalk(["w", "e", "w", "e", "w", "e", "w", "e", "w", "e"]));
