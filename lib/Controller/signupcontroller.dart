import "package:get/get.dart";
import "package:task2/View/loginpage.dart";
import "package:task2/View/verificationpage.dart";
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:task2/view/dialogwidget.dart';
import 'package:task2/View/signuppage.dart';
import 'package:image_picker/image_picker.dart';

class SignUpController extends GetxController {
  var obscureText = true.obs;
  var isLoading = false.obs;
  var photo='assets/images/camera.png'.obs;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }



  void takePhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
  }

  void goLogin() {
    Get.off(LoginPage());
  }

  void showErrorDialog(BuildContext context, String title, String message,
      {String buttonText = "OK", VoidCallback? onButtonPressed}) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return CustomDialog(
          title: title,
          message: message,
          assetImagePath: 'assets/images/Incorrect.png',
          buttons: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: ElevatedButton(
                onPressed: () {
                  Get.off(SignUpPage());
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 182, 229, 185),
                ),
                child: const SizedBox(
                  width: 150,
                  child: Text(
                    "Try Again",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 3, 80, 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> register() async {
    isLoading.value = true;

    final username = usernameController.text;
    final email = emailController.text;
    final mobile = mobileController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (password != confirmPassword) {
      Get.dialog(
        CustomDialog(
            assetImagePath: 'assets/images/Incorrect.png',
            title: 'Error',
            message: 'Passwords do not match',
            buttons: <Widget>[
              TextButton(
                onPressed: Get.back,
                child: const Text('Try Again'),
              )
            ]),
      );
      isLoading.value = false;
      return;
    }

    try {
      String token = "your_auth_token";
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };

      var body = {
        'username': username,
        'email': email,
        'mobile': mobile,
        'password': password,
      };

      var response = await http.post(
        Uri.parse('api'),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        Get.to(VerificationPage);
      } else {
        Get.dialog(
          CustomDialog(
              assetImagePath: 'assets/images/Incorrect.png',
              title: 'Oh no!',
              message: 'Something went wrong\n      Please try again!',
              buttons: <Widget>[
                TextButton(
                  onPressed: Get.back,
                  child: const Text('Try Again'),
                )
              ]),
        );
      }
    } catch (e) {
      Get.dialog(
        CustomDialog(
            assetImagePath: 'assets/images/Incorrect.png',
            title: 'Oh no!',
            message: 'Something went wrong\n      Please try again!',
            buttons: <Widget>[
              TextButton(
                onPressed: Get.back,
                child: const Text('Try Again'),
              )
            ]),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
