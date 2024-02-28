function friend(friends) {
  const result = friends.filter((friend) => {
    return friend.length === 4;
  });
  return result;
}
