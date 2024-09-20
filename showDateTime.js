function updateDateTime() {
  const now = new Date();
  const formattedDateTime = now.toLocaleString();
  console.log(formattedDateTime);
}

setInterval(updateDateTime, 1000);
