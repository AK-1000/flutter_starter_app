import 'package:libphonenumber/libphonenumber.dart';

class FormValidators {
  String emailValidator(String value) {
    if (value.isEmpty) {
      return 'Email cannot be empty';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return '';
  }

  Future<String> validateNumber(String number) async {
    if (number.isEmpty) {
      return 'Phone cannot be empty';
    }
    String numberWithOutSpaces = number.replaceAll(" ", "");
    String numberWithIso = '+961$numberWithOutSpaces';
    bool? isValid = await PhoneNumberUtil.isValidPhoneNumber(
        phoneNumber: numberWithIso, isoCode: 'LB');
    if (isValid == null) {
      return 'Invalid number';
    } else {
      if (!isValid) {
        return 'Invalid number';
      }
    }
    return '';
  }

  String validateBirthdate(String birthdate) {
    if (birthdate == '') {
      return 'Choose a birthdate';
    }
    return '';
  }

  String validateName(String name) {
    if (name.isEmpty) {
      return 'Name cannot be empty';
    } else {
      return '';
    }
  }

  String validateSpeciality(String speciality) {
    if (speciality.isEmpty) {
      return 'Speciality cannot be empty';
    } else {
      return '';
    }
  }

  // // From yyyy-mm-dd to dd-mm-yyyy
  // static String FormatDate(String date) {
  //   DateTime inputDate = DateTime.parse(date);
  //   String formattedDate = DateFormat('dd-MM-yyyy').format(inputDate);
  //   return formattedDate;
  // }

  String validateGender(String gender) {
    if (gender == '') {
      return 'Choose your gender';
    } else {
      return '';
    }
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    } else {
      return '';
    }
  }

  String validateConfirmedPassword(String password, String confirm) {
    if (password != confirm) {
      return 'Passwords mismatch, make sure password and it\'s confirmation match';
    }
    return '';
  }

  String validateAddress(String address) {
    if (address.isEmpty) {
      return 'Address cannot be empty';
    } else {
      return '';
    }
  }
}
