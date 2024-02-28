function bouncingBall(h, bounce, window) {
  if (h <= 0 || bounce <= 0 || bounce >= 1 || window >= h) {
    return -1;
  }

  let times = 1;
  let height = h;
  while (height * bounce > window) {
    height = height * bounce;
    times += 2;
  }
  return times;
}

console.log(bouncingBall(4, 0.25, 1));
