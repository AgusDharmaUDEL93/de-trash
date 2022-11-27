import 'package:detrash/resources/resources.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.size.width * 0.07,
            vertical: Get.size.height * 0.04,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Create Account",
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextFormField(
                              validator: ((value) {
                                if (value!.isEmpty) {
                                  return "Please insert your email";
                                }
                                bool isValid = EmailValidator.validate(value);
                                if (!isValid) {
                                  return 'Insert the correct email';
                                }
                              }),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: borderColor,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 10,
                                ),
                                hintText: 'Email',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: borderColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: borderColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                focusColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Obx(
                              (() => TextFormField(
                                    controller: password,
                                    validator: (value) {
                                      if (value!.length < 8) {
                                        return "Minimal character is 8";
                                      }
                                    },
                                    cursorColor: Colors.black,
                                    obscureText: controller.obscureTextPass(),
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: controller.iconStatus(),
                                        onPressed: () {
                                          controller.changeState();
                                        },
                                        color: Colors.grey,
                                      ),
                                      hintStyle: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: borderColor,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 25,
                                        vertical: 10,
                                      ),
                                      hintText: 'Password',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: borderColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: borderColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      focusColor: Colors.black,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: borderColorVariant,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Or Sign up with",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: borderColorVariant,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: Get.height * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: borderColor,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          'assets/img/facebook_ic.png',
                                          width: Get.height * 0.03,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: Get.height * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: borderColor,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          'assets/img/google_ic.png',
                                          width: Get.height * 0.03,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: Get.height * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: borderColor,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          'assets/img/cib_apple.png',
                                          width: Get.height * 0.03,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("Sudah di save");
                    }
                  },
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      gradient: gradientColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
