import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 190),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 92, 140, 102),
                            width: 2),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      'assets/images/camera.png',
                      height: 100,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
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
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset('assets/images/Edit icon.png'),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset('assets/images/Edit icon.png'),
                        hintText: "Confirm Password",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 163, 197, 176),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 229, 185),
                          ),
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
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Certificate PDF file',
                            style: TextStyle(
                              color: Color.fromARGB(255, 163, 197, 176),
                            ),
                          ),
                          SizedBox(width: 115),
                          Icon(
                            Icons.cloud_upload_outlined,
                            color: Color.fromARGB(255, 163, 197, 176),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
