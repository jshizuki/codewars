function sort(items) {
  let sorted = false;
  while (!sorted) {
    sorted = true;
    items.map((item, index) => {
      if (item > items[index + 1]) {
        let temp = item;
        items[index] = items[index + 1];
        items[index + 1] = item;
        sorted = false;
      }
    });
  }
  return items;
}

console.log(sort([1, 3, 2, 3, 4, 1]));
