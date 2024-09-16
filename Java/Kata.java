/* You will be given an array and a limit value.
You must check that all values in the array are below or equal
to the limit value. If they are, return true. Else, return false.

You can assume all values in the array are numbers.
*/

public class Kata {
  public static boolean smallEnough(int[] a, int limit) {

    for (int each: a) {
      if (each > limit) {
        return false;
      }
    }
    return true;

  }

  public static void main(String[] args) {

    System.out.println(Kata.smallEnough(new int[] {1, 2, 3}, 3));

  }
}
