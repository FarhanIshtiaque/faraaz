class Validator {
  static String? validateEmail(String value) {
    const pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
    final regExp = RegExp(pattern);

    if (value.isEmpty) {
      return "Please enter an email";
    } else if (!regExp.hasMatch(value)) {
      return "Please enter a valid email";
    } else {
      return null;
    }
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Please enter password";
    } else {
      return null;
    }
  }

  static String? validateMobile(String value) {
    // String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    // RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter mobile number';
    }
    // else if (!regExp.hasMatch(value)) {
    //   return 'Please enter valid mobile number';
    // }
    else if (value.length < 8) {
      return 'Phone number can\'t be greater than 8 digit';
    }
    return null;
  }

  static String? validateName(String value) {
    if (value.length < 3) {
      return "Please enter a valid name";
    } else {
      return null;
    }
  }
  static String? validateSubject(String value) {
    if (value.length < 4) {
      return "Please enter a valid subject";
    } else {
      return null;
    }
  }
  static String? validateMessage(String value) {
    if (value.length < 8 ){
      return "Please enter a valid message";
    } else {
      return null;
    }
  }
}
