function bmi(weight, height) {
  const bmiValue = weight / (height * height);

  return bmiValue <= 18.5
    ? "Underweight"
    : bmiValue <= 25.0
    ? "Normal"
    : bmiValue <= 30
    ? "Overweight"
    : "Obese";
}

console.log(bmi(80, 1.8));
