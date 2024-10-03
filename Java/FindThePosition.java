public class FindThePosition {
  public static String position(char alphabet) {
    char[] alphabets = new char[26];

    // Create an array of char from a to z;
    for (int i = 0; i < alphabets.length; i++) {
      alphabets[i] = (char) ('a' + i);
    }

    // Convert char[] alphabets to a String, then find the value based on its index;
    int result = String.valueOf(alphabets).indexOf(alphabet) + 1;

    return "Position of alphabet: " + result;
  }

  public static void main(String[] args) {
    System.out.println(position('c')); // 3
  }
}
