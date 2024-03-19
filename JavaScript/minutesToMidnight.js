function minutesToMidnight(d) {
  const currentTime = d;
  const midnight = new Date(currentTime);
  midnight.setHours(0, 0, 0);
  midnight.setDate(d.getDate() + 1);
  const timeDifference = midnight - currentTime;
  const result = Math.round(timeDifference / 60000);
  return result === 1 ? result + " minute" : result + " minutes";
}

console.log(minutesToMidnight(new Date(new Date().setHours(23, 59, 0, 0))));
