function wave(str){
  let array = [];
  let index = 0;
  str = str.toLowerCase();
  for (let i = 0; i < str.length; i++) {
    let result = str.slice(0,index) + str[index].toUpperCase() + str.slice(index + 1);
    array.push(result);
    index = index + 1;
  }
  return array.filter(each => each !== str)
}
