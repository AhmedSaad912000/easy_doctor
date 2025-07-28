class AppRegex {
  static bool isEmailValid(String email) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }
  static bool isPasswordValid(String password) {
    final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    return regex.hasMatch(password);
  }
  static bool hasLowerCase(String input) {
    final regex = RegExp(r'[a-z]');
    return regex.hasMatch(input);
  }
  static bool hasUpperCase(String input) {
    final regex = RegExp(r'[A-Z]');
    return regex.hasMatch(input);
  }
  static bool hasNumber(String input) {
    final regex = RegExp(r'[0-9]');
    return regex.hasMatch(input);
  }
  static bool hasSpecialCharacter(String input) {
    final regex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return regex.hasMatch(input);
  }
  static bool hasMinLength(String password) {
    return RegExp(r'^.{8,}$').hasMatch(password);
  }
}
