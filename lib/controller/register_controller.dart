import 'package:get/get.dart';

class RegisterController extends GetxController {
  var pressedBool = true;
  var privacy = true;

  changeStatus() {
    if (pressedBool) {
      pressedBool = false;
    } else {
      pressedBool = true;
    }
    update();
  }

  privacyStatus() {
    if (privacy) {
      privacy = false;
    } else {
      privacy = true;
    }
    update();
  }
}
