import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement RegisterController

  final count = 0.obs;
  var _isVisible = false.obs;
  
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
  bool obscureTextPass() {
    return _isVisible.value ? false : true;
  }

  Widget iconStatus() {
    return _isVisible.value
        ? Icon(Icons.visibility_off)
        : Icon(Icons.visibility);
  }

  void changeState() {
    _isVisible.value = !_isVisible.value;
  }

  void increment() => count.value++;
}