function probability(urn1, urn2, color) {
  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  const tailHead = [1, 2];

  const chanceColorIn1 = [
    urn1[color] * tailHead[0],
    Object.values(urn1).reduce((a, b) => a + b) * tailHead[1],
  ];
  const chanceColorIn2 = [
    urn2[color] * tailHead[0],
    Object.values(urn2).reduce((a, b) => a + b) * tailHead[1],
  ];

  const totalChance = [
    chanceColorIn1[0] * chanceColorIn2[1] +
      chanceColorIn1[1] * chanceColorIn2[0],
    chanceColorIn1[1] * chanceColorIn2[1],
  ];

  const result = [
    chanceColorIn1[0] * totalChance[1],
    chanceColorIn1[1] * totalChance[0],
  ];

  const divisor = gcd(result[0], result[1]);

  return [BigInt(result[0] / divisor), BigInt(result[1] / divisor)];
}

console.log(probability({ red: 4, blue: 3 }, { red: 3, blue: 5 }, "blue"));
