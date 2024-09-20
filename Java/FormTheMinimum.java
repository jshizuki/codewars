import java.util.Arrays;

public class FormTheMinimum {
  public static int minValue(int[] values) {
    int[] removeDuplicates = Arrays.stream(values).distinct().toArray();
    Arrays.sort(removeDuplicates);
    // System.out.println(Arrays.toString(result));
    String result = "";
    for (int number : removeDuplicates) {
      result += number;
    }
    return Integer.parseInt(result);
  }

  public static void main(String[] args) {
    System.out.println(minValue(new int[] { 1, 3, 1, 2 })); // [1, 2, 3] > 123
    System.out.println(minValue(new int[] { 5, 7, 5, 9, 7 })); // [5, 7, 9] > 579
  }
}
