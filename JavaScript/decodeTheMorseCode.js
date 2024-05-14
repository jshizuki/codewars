decodeMorse = function (morseCode) {
  // You can use MORSE_CODE[morse]
  const split_code = morseCode.trim().split(" ");

  const result = split_code.map((each) => {
    if (MORSE_CODE[each] === undefined) {
      return "/";
    } else {
      return MORSE_CODE[each];
    }
  });
  return result.join("").replace(/\/\//g, " ");
};

// decodeMorse = function (message) {
//   const morseCode = {
//     A: ".-",
//     B: "-...",
//     C: "-.-.",
//     D: "-..",
//     E: ".",
//     F: "..-.",
//     G: "--.",
//     H: "....",
//     I: "..",
//     J: ".---",
//     K: "-.-",
//     L: ".-..",
//     M: "--",
//     N: "-.",
//     O: "---",
//     P: ".--.",
//     Q: "--.-",
//     R: ".-.",
//     S: "...",
//     T: "-",
//     U: "..-",
//     V: "...-",
//     W: ".--",
//     X: "-..-",
//     Y: "-.--",
//     Z: "--..",
//     0: "-----",
//     1: ".----",
//     2: "..---",
//     3: "...--",
//     4: "....-",
//     5: ".....",
//     6: "-....",
//     7: "--...",
//     8: "---..",
//     9: "----.",
//     ".": ".-.-.-",
//     ",": "--..--",
//     "?": "..--..",
//     "'": ".----.",
//     "!": "-.-.--",
//     "/": "-..-.",
//     "(": "-.--.",
//     ")": "-.--.-",
//     "&": ".-...",
//     ":": "---...",
//     ";": "-.-.-.",
//     "=": "-...-",
//     "+": ".-.-.",
//     "-": "-....-",
//     _: "..--.-",
//     '"': ".-..-.",
//     $: "...-..-",
//     "@": ".--.-.",
//     " ": "/",
//   };
//   const split_message = message.split("");
//   const result = split_message.map((each) => {
//     if (morseCode[each] !== "/") {
//       return morseCode[each] + " ";
//     } else {
//       return "  ";
//     }
//   });
//   return result.join("");
// };

// console.log(decodeMorse("GUTEN MORGEN"));
