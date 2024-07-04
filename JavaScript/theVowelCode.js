function encode(string) {
  const vowels = ["a", "e", "i", "o", "u"];

  vowels.map((char, index) => {
    if (string.includes(char)) {
      string = string.replace(new RegExp(char, "g"), index + 1);
    }
  });

  return string;
}

console.log(encode("hello"));

function decode(string) {
  const correspondingValues = { 1: "a", 2: "e", 3: "i", 4: "o", 5: "u" };

  string.split("").map((char) => {
    if (correspondingValues[char] !== undefined) {
      string = string.replace(new RegExp(char, "g"), correspondingValues[char]);
    }
  });

  return string;
}

console.log(decode("h2ll4"));
