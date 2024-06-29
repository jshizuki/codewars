function rgb(arr) {
    const letters = Array.from({ length: 6 }, (_, i) => String.fromCharCode(65 + i));
    const lettersHexConversion = Array.from({ length: 6 }, (_, i) => 10 + i);
    const hexArray = [];
    arr.forEach((value, i) => {
        const hex = Math.floor(value / 16);
        const firstHex = hex < 10 ? hex : letters[lettersHexConversion.indexOf(hex)];
        const remainingValue = value - hex * 16;
        const secondHex = remainingValue < 10
            ? remainingValue
            : letters[lettersHexConversion.indexOf(hex)];
        hexArray.push(firstHex, secondHex);
    });
    return hexArray.join("");
}
console.log(rgb([148, 0, 211]));
