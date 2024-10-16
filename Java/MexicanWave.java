import java.util.Arrays;
import java.util.Objects;

public class MexicanWave {
    public static String[] wave(String str) {
        String[] wordsArray = str.split("");
        String[] result = new String[wordsArray.length];

        for (int i = 0; i < result.length; i++) {
            if (str.isEmpty()) {
                return new String[0];
            }
            if (wordsArray[i].equals(" ")) {
                continue;
            }
            wordsArray[i] = wordsArray[i].toUpperCase();
            String newStr = String.join("", wordsArray);
            result[i] = newStr;
            wordsArray[i] = wordsArray[i].toLowerCase();
        }

        result = Arrays.stream(result).filter(Objects::nonNull).toArray(String[]::new);
        return result;
    }

    public static void main(String[] args) {
        System.out.println(Arrays.toString(wave("Hello")));
        System.out.println(Arrays.toString(wave("Two words")));
        System.out.println(Arrays.toString(wave(" gap ")));
        System.out.println(Arrays.toString(wave("")));
    }
}
