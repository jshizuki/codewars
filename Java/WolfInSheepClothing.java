import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class WolfInSheepClothing {
    public static String warnTheSheep(String[] array) {
        List<String> list = new ArrayList<>(Arrays.asList(array));
        Collections.reverse(list);
        int locationOfWolf = list.indexOf("wolf") + 1;

        return locationOfWolf == 1 ? "Pls go away and stop eating my sheep" :
                "Oi! Sheep number " + (locationOfWolf - 1) + "! You are about to be eaten by a wolf!";
    }

    public static void main(String[] args) {
        System.out.println(warnTheSheep(new String[]{"sheep", "sheep", "sheep", "wolf", "sheep"}));
    }
}