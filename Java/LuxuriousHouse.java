import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class LuxuriousHouse {
    public static int[] luxhouse(int[] houses) {
        int[] result = new int[houses.length];
        ArrayList<Integer> remainingHouses = new ArrayList<>();

        for (int house: houses) { remainingHouses.add(house); }

        for (int i = 0; i < houses.length ; i++) {
            remainingHouses.remove(0);
            if (remainingHouses.isEmpty()) { result[i] = 0; break; }

            int tallest = Collections.max(remainingHouses);
            result[i] = houses[i] <= tallest ? result[i] = tallest - houses[i] + 1 : 0;
        }

        return result;
    }

    public static void main(String[] args) {
        System.out.println(Arrays.toString(luxhouse(new int[]{1, 2, 3, 1, 2}))); // [3, 2, 0, 2, 0]
        System.out.println(Arrays.toString(luxhouse(new int[]{1, 1, 1}))); // [1, 1, 0]
    }
}
