function tribonacci(signature, n) {
  if (n < 3) {
    return signature.slice(0, n);
  }

  for (let i = 0; i < n - 3; i++) {
    const sum = signature.slice(i).reduce((x, y) => x + y);
    signature.push(sum);
  }
  return signature;
}

console.log(tribonacci([1, 1, 1], 10));
