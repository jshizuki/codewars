/* You are given an odd-length array of integers, in which all of them are
the same, except for one single number.

Complete the method which accepts such an array,
and returns that single different number.

The input array will always be valid! (odd-length >= 3)
*/

public class Solution {
  static int stray(int[] numbers) {
    int differentNumber = 0;

    for (int number : numbers) {
      differentNumber = differentNumber ^ number;
    }

    return differentNumber;
  }
  public static void main(String[] args) {
    System.out.println(stray(new int[]{1,2,2}));
    System.out.println(stray(new int[]{2,1,2}));
    System.out.println(stray(new int[]{2,2,1}));
    System.out.println(stray(new int[]{17, 17, 17, 3, 17, 17, 17}));
  }
}
