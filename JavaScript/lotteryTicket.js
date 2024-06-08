function bingo(ticket, win) {
  const smallWin = [];
  ticket.forEach((ticket) => {
    const charCodes = ticket[0]
      .split("")
      .map((character) => character.charCodeAt());
    charCodes.includes(ticket[1]) ? smallWin.push("win") : smallWin;
  });
  return smallWin.length >= win ? "Winner!" : "Loser!";
}

console.log(
  bingo(
    [
      ["ABC", 65],
      ["HGR", 74],
      ["BYHT", 74],
    ],
    1
  )
);
