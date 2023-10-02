import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Builder(
      builder: (context) {
        return SizedBox(
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                color: Color(0xffe16555),
              ),
              const SizedBox(height: 18.0),
              Container(
                margin: const EdgeInsets.only(left: 7),
                child: const Text("Loading..."),
              ),
            ],
          ),
        );
      },
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

String getMessageFromErrorCode(String errorCode) {
  switch (errorCode) {
    case "ERROE_EMAİL_ALREADY_IN_USE":
      return "Email already used. Go to login page";
    case "Acoount-exists-with-different-credential":
      return "Email already used. Go to login page";
    case "Email-already-in-use":
      return "Email already used. Go to login page";
    case "ERROR_WRONG_PASSWORD":
    case "Wrong-passsword":
      return "Wrong Password";
    case "ERROR_USER_NOT_FOUND":
      return "No user found with this email";
    case "user-not-found":
      return "No user found with this email";
    case "ERROR_USER_DISABLED":
      return "User disabled.";
    case "user-disabled":
      return "User disabled.";
    case "ERROR_TOO_MANY_REQUESTS":
      return "Too many requests to log into this account";
    case "operation-not-allowed":
      return "Too many requests to log into this account";
    case "ERROR_OPERATION_NOT_ALLOWED":
      return "Too many requests to log into this account";
    case "ERROR_INVALİD_EMAİL":
      return "Email address is invalid";
    case "invalid-email":
      return "Email address is invalid";
    default:
      return "Login failed. Please try again";
  }
}

bool loginValidation(String email, String password) {
  if (email.isEmpty && password.isEmpty) {
    showMessage("Both Fields are empty");
    return false;
  } else if (email.isEmpty) {
    showMessage("E-mail is empty");
    return false;
  }
  if (password.isEmpty) {
    showMessage("Password is  empty");
    return false;
  } else {
    return true;
  }
}

bool signUpValidation(String email, String password, String name, String phone) {
  if (email.isEmpty && password.isEmpty && name.isEmpty && phone.isEmpty) {
    showMessage("All fields are empty");
    return false;
  } else if (email.isEmpty) {
    showMessage("E-mail is empty");
    return false;
  }
  if (password.isEmpty) {
    showMessage("Password is  empty");
    return false;
  } else if (name.isEmpty) {
    showMessage("Name is empty");
    return false;
  }
  if (phone.isEmpty) {
    showMessage("Phone is  empty");
    return false;
  } else {
    return true;
  }
}
