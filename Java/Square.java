// Given an integral number, determine if it's a square number:

public class Square {
    public static boolean isSquare(int n) {
        if (n < 0) return false;
        double sqrt = (int)Math.sqrt(n);
        return sqrt * sqrt == n;
    }

    public static void main(String[] args) {
        System.out.println(isSquare(95335634));
    }
}
