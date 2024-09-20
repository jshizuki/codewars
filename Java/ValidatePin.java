/*
ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything
but exactly 4 digits or exactly 6 digits.

If the function is passed a valid PIN string, return true, else return false.
 */

public class ValidatePin {
  public static boolean validatePin(String pin) {
    String regex1 = "^\\d{4}$";
    String regex2 = "^\\d{6}$";
    return (pin.matches(regex1) || pin.matches(regex2)) ? true : false;
  }
  public static void main(String[] args) {
    System.out.println(validatePin("1234")); // true
    System.out.println(validatePin("12345")); // false
    System.out.println(validatePin("a123")); // false
  }
}
