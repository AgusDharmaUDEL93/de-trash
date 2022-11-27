import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement LoginController

  var _isVisible = [false.obs, false.obs];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool obscureTextPass(int index) {
    return _isVisible[index].value ? false : true;
  }

  Widget iconStatus(int index) {
    return _isVisible[index].value
        ? Icon(Icons.visibility_off)
        : Icon(Icons.visibility);
  }

  void changeState(int index) {
    _isVisible[index].value = !_isVisible[index].value;
  }
}
