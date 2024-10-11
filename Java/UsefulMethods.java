import java.util.ArrayList;
import java.util.Arrays;

import static java.lang.Math.random;

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

    // Sort an array
    public static String[] sortArray(String[] strArray) {
        Arrays.sort(strArray);
        return strArray;
    }

    // Calculate the average of array elements
    public static double averageOfArrayElements(int[] intArray) {
        double avg, sum = 0;
        for (int num : intArray) {
            sum += num;
        }
        avg = sum / intArray.length;
        return avg;
    }

    // Find the smallest element in an array
    public static int findSmallestElement(int[] intArray) {
        int smallestElement = intArray[0];
        for (int num : intArray) {
            if (num < smallestElement) {
                smallestElement = num;
            }
        }
        return smallestElement;
    }

    // Loop through an arraylist
    public static void loopThroughArrayList() {
        ArrayList<String> cars = new ArrayList<String>();
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");
        cars.add("Suzuki");
        for (String car : cars) {
            System.out.println(car);
        }
    }

    // Loop through an array
    public static void loopThroughArray() {
        String[] cars = new String[4];
        cars[0] = "Volvo";
        cars[1] = "BMW";
        cars[2] = "Ford";
        cars[3] = "Suzuki";
        for (String car : cars) {
            System.out.println(car);
        }
    }

    // Generate a random number
    public static int generateRandomNumber() {
        return (int) (Math.random() * 101); // 0 to 100
    }

    public static void main(String[] args) {
        System.out.println(countWordsInString("One Two Three Four"));
        System.out.println(reverseString("Hello"));
        System.out.println(sumOfArray(new int[]{1, 5, 10, 25}));
        System.out.println(Arrays.toString(sortArray(new String[]{"Volvo", "BMW", "Tesla", "Ford", "Fiat", "Mazda", "Audi"})));
        System.out.println(averageOfArrayElements(new int[]{20, 22, 18, 35, 48, 26, 87, 70}));
        System.out.println(findSmallestElement(new int[]{20, 22, 18, 35, 48, 26, 87, 70}));
        loopThroughArrayList();
        loopThroughArray();
        System.out.println(generateRandomNumber());
    }
}