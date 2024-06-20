import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/Controller/signupcontroller.dart';
import 'package:file_picker/file_picker.dart';

class SignUpPage extends StatelessWidget {
  final SignUpController _signUpController = Get.put(SignUpController());

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
  }

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.white, Colors.lightGreen],
            focal: Alignment.topLeft,
            radius: 10,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 92, 140, 102),
                              width: 2),
                          shape: BoxShape.circle),
                      child: GestureDetector(
                        onTap: _signUpController.takePhoto,
                        child: Obx(() {
                          return Image.asset(
                            _signUpController.photo.value,
                            height: 100,
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: _signUpController.usernameController,
                          decoration: InputDecoration(
                            hintText: "Username",
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 163, 197, 176),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 182, 229, 185)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: _signUpController.emailController,
                          decoration: InputDecoration(
                            suffixIcon:
                                Image.asset('assets/images/Edit icon.png'),
                            hintText: "Email",
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 163, 197, 176),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 182, 229, 185)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: _signUpController.mobileController,
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 163, 197, 176),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 182, 229, 185)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
                      child: SizedBox(
                        height: 45,
                        child: Obx(() {
                          return TextField(
                            controller: _signUpController.passwordController,
                            obscureText: _signUpController.obscureText.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _signUpController.obscureText.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  _signUpController.toggleObscureText();
                                },
                              ),
                              hintText: "Password",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 163, 197, 176),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 182, 229, 185)),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
                      child: SizedBox(
                        height: 45,
                        child: Obx(() {
                          return TextField(
                            controller:
                                _signUpController.confirmPasswordController,
                            obscureText: _signUpController.obscureText.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _signUpController.obscureText.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  _signUpController.toggleObscureText();
                                },
                              ),
                              hintText: "Confirm Password",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 163, 197, 176),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 182, 229, 185),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 20, 60, 30),
                      child: ElevatedButton(
                        onPressed: () {
                          pickFile();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'Certificate PDF file',
                              style: TextStyle(
                                color: Color.fromARGB(255, 163, 197, 176),
                              ),
                            ),
                            SizedBox(width: 40),
                            Icon(
                              Icons.cloud_upload_outlined,
                              color: Color.fromARGB(255, 163, 197, 176),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _signUpController.register();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 209, 240, 211),
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 3, 80, 20),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          const SizedBox(width: 70),
                          Text(
                            "Already have an account ?",
                            style: TextStyle(
                              color: Colors.green[900],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _signUpController.goLogin();
                            },
                            child: const Text(
                              "Log in",
                              style: TextStyle(color: Colors.green),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
