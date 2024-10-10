public class UsefulMethods {

    // Count Number of Words in a String
    public static int countWordsInString(String str) {
      return str.split(" ").length;
    }

    // Reverse a String
    public static String reverseString(String str) {
        String reversedStr = "";
        for (int i = 0; i < str.length(); i++) {
            reversedStr = str.charAt(i) + reversedStr;
        }
        return reversedStr;
    }

    // Calculate the sum of an array;
    public static int sumOfArray(int[] numbers) {
        int sum = 0;
        for (int number : numbers) { sum += number; }
        return sum;
    }

    public static void main(String[] args) {
        System.out.println(countWordsInString("One Two Three Four"));
        System.out.println(reverseString("Hello"));
        System.out.println(sumOfArray(new int[]{1, 5, 10, 25}));
    }
}