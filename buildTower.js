function towerBuilder(nFloors) {
  let array = [];
  let star = "*";
  const accumulator = "**";
  for (let n = 0; n < nFloors; n++) {
    array.push(star);
    star = star + accumulator;
  }
  let space = " ";
  let lastElementLength = array[array.length - 1].length;
  return array.map((each, index) => {
    const space = (lastElementLength - array[index].length) / 2;
    return " ".repeat(space) + each + " ".repeat(space);
  });
}
