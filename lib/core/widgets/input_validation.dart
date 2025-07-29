import 'package:esay_doctor/core/helper/app_regex.dart';

class InputValidator{
  static String? email(String?value){
    if(value==null || value.isEmpty|| !AppRegex.isEmailValid(value)){
      return "Please Enter a valid email";
    }else{
      return null;
    }

  }
  static String? name(String?value){
    if(value==null || value.isEmpty){
      return "Please Enter  name";
    }else{
      return null;
    }

  }
  static String? phone(String?value){
    if(value==null || value.isEmpty|| !AppRegex.isPhoneNumberValid(value)){
      return "Please Enter a valid phone Number";
    }else{
      return null;
    }

  }
  static String? password(String?value) {
    if (value==null || value.isEmpty) {
      return "Please Enter a valid Password ";
    } else if (value.length < 8) {
      return "Password Must Be At Least 8 Characters";
    } else {
      return null;
    }
  }
}