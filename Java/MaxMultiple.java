/*

Given a Divisor and a Bound , Find the largest integer N , Such That ,

Conditions :
N is divisible by divisor

N is less than or equal to bound

N is greater than 0. */

public class MaxMultiple {
  public static int maxMultiple(int divisor, int bound) {
    return divisor *  (bound / divisor);
  }

  public static void main(String[] args) {
    System.out.println(maxMultiple(2, 7)); // return 6
    System.out.println(maxMultiple(10, 50)); // return 50
  }
}
