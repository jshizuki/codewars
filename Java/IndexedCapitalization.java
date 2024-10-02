// Given a string and an array of integers representing indices,
// capitalize all letters at the given indices.

public class IndexedCapitalization {
  public static String capitalize(String string, int[] ind) {

    String[] splitString = string.split("");

    for (int each : ind) {
      if (each < splitString.length) {
        splitString[each] = splitString[each].toUpperCase();
      }
    }

    return String.join("", splitString);
  }

  public static void main(String[] args) {
    System.out.println(capitalize("abcdef", new int[] { 1, 2, 5 })); // "aBCdeF"
    System.out.println(capitalize("abcdef", new int[] { 1, 2, 5, 100 })); // aBCdeF
  }
}
