import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  /* 
  UserInput = What User entered with the keyboard .
  UserOutput = Calculate the numbers that the user entered and put into userOutPut variable.
  */
  var userInput = "";
  var userOutput = "";

  /// Equal Button Pressed Func
  equalPressed() {
    if (userInput.isEmpty) return;
    String userInputFC = userInput;
    userInputFC = userInputFC.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(userInputFC);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    userOutput = eval.toString();
    update();
  }

  /// Clear Button Pressed Func
  clearInputAndOutput() {
    userInput = "";
    userOutput = "";
    update();
  }

  /// Delete Button Pressed Func
  deleteBtnAction() {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
    }
    update();
  }

  ansBtnAction() {
    if (userInput.isNotEmpty) {
      userInput = userInput[0] == "-" ? userInput.substring(1) : "-$userInput";
    }
    update();
  }

  /// on Number Button Tapped
  onBtnTapped(List<String> buttons, int index) {
    // start value need to be string number from 0 to 9
    if (isNumericString(buttons[index]) && index == 0) {
      userInput += buttons[index];
    } else {
      userInput += buttons[index];
    }
    update();
  }

  bool isNumericString(String s) {
    if (s.isEmpty) {
      return false;
    }

    // Use a regular expression to check if the string is a number from 0 to 9
    return RegExp(r'^[0-9]$').hasMatch(s);
  }
}
