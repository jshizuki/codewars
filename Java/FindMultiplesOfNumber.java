import java.util.Arrays;

public class FindMultiplesOfNumber {
    public static int[] find(int base, int limit) {
        int i = 0;
        int[] result = new int[limit / base];
        int multiple = base;
        while (base <= limit) {
            result[i] = base;
            base += multiple;
            i++;
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(Arrays.toString(find(5, 25)));
    }
}
