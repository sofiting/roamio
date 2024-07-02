extension StringValidation on String {
  String? validateName() {
    if (isEmpty) {
      return 'Please enter your name';
    }
    if (length < 3) {
      return 'Name must be at least 3 characters long';
    }
    final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegex.hasMatch(this)) {
      return 'Name must contain only letters and spaces';
    }
    final diacriticsRegex = RegExp(r'[áéíóúÁÉÍÓÚ]');
    if (diacriticsRegex.hasMatch(this)) {
      return 'Name must not contain accented characters';
    }
    return null;
  }

  String? validateEmail() {
    if (isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(this)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword() {
    if (isEmpty) {
      return 'Please enter your password';
    }
    if (length < 8) {
      return 'Password must be at least 8 characters long';
    }
    final upperCaseRegex = RegExp(r'[A-Z]');
    final lowerCaseRegex = RegExp(r'[a-z]');
    final digitRegex = RegExp(r'\d');
    final specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (!upperCaseRegex.hasMatch(this)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!lowerCaseRegex.hasMatch(this)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!digitRegex.hasMatch(this)) {
      return 'Password must contain at least one digit';
    }
    if (!specialCharRegex.hasMatch(this)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }
}
