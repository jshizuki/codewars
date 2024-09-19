public class Money {
  public static int calculateYears(double principal, double interest, double tax, double desired) {
    int year = 0;

    while (principal < desired) {
      double interestAfterTax = (principal * interest) * (1.0 - tax);
      principal += interestAfterTax;
      year += 1;
    }

    return year;
  }

  public static void main(String[] args) {
    System.out.println(calculateYears(1000, 0.05, 0.18, 1100));
  }
}
