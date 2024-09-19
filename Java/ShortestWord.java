/*

Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.

*/

public class ShortestWord {
  public static int findShort(String s) {
    String[] words = s.split(" ");

    int min = Integer.MAX_VALUE;

    for (String word : words) {
      if (word.length() < min) {
        min = word.length();
      }
    }

    return min;
  }

  public static void main(String[] args) {
    System.out.println(findShort("Let's travel abroad shall we"));
  }
}
