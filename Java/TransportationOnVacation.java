public class TransportationOnVacation {
  public static int rentalCarCost(int d) {
    int priceBeforeDiscount = 40 * d;
    if (d >= 3 && d < 7) {
      return priceBeforeDiscount - 20;
    } else if (d >= 7) {
      return priceBeforeDiscount - 50;
    } else {
      return priceBeforeDiscount;
    }
  }
}
