import "package:flutter/material.dart";
import "package:task2/Controller/logincontroller.dart";
import "package:get/get.dart";

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Image.asset(
                      'assets/images/Logo.png',
                      height: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/images/Edit icon.png'),
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 163, 197, 176),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 229, 185)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 229, 185)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 163, 197, 176),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 229, 185)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 229, 185)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                  child: Obx(
                    () {
                      return TextField(
                        obscureText: _loginController.obscureText.value,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _loginController.obscureText.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.lightGreen,
                            ),
                            onPressed: () {
                              _loginController.toggleObscureText();
                            },
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 163, 197, 176),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 182, 229, 185)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 182, 229, 185)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      _loginController.isLoading.value
                          ? null
                          : () {
                              _loginController.login();
                            };
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 182, 229, 185),
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Log in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 3, 80, 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Obx(
                        () {
                          return Checkbox(
                            value: _loginController.rememberMe.value,
                            onChanged: (newBool) {
                              _loginController.rememberMe.value = newBool!;
                            },
                          );
                        },
                      ),
                    ),
                    const Text("Remember me"),
                    const SizedBox(width: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password?"),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      _loginController.goSignup();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 209, 240, 211),
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Create New Account",
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
            ),
          ),
        ],
      ),
    );
  }
}
