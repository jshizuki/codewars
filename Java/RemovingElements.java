import java.util.ArrayList;
import java.util.Arrays;

public class RemovingElements {
    public static Object[] removeEveryOther(Object[] arr) {
        ArrayList<Object> result = new ArrayList<>();
        for (int i = 0; i < arr.length; i++) {
            if (i % 2 == 0) {
                result.add(arr[i]);
            }
        }
        return result.toArray();
    }

    public static void main(String[] args) {
       System.out.println(Arrays.toString(removeEveryOther(new Object[]{"Hello", "Goodbye", "Hello Again"})));
       System.out.println(Arrays.toString(removeEveryOther(new Object[]{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })));
    }
}