// Write a function to split a string and convert it into an array of words.

import java.util.Arrays;

public class ConvertStringToArray {

  public static String[] stringToArray(String s) {
    String[] result = s.split(" ");
    System.out.println(Arrays.toString(result));
    return result;
  }

  public static void main(String[] args) {
    System.out.println(stringToArray("I love arrays they are my favorite"));
  }
}
