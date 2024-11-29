import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/lupapw.dart';
import 'package:flutter_application_1/views/register.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/controllers/auth_controller.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({super.key});

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String _errorMessage = '';
  bool passToggle = true;

  // final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00712D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   color: const Color(0xFF00712D),
            //   child: const Padding(
            //     padding: EdgeInsets.only(top: 60),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Image(
            //           image: AssetImage('asset/image/logo1.png'),
            //           width: 59,
            //           height: 77,
            //         ),
            //         Text(
            //           'Sistem Akademik',
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontFamily: 'PoppinsEkstraBold',
            //             fontSize: 15,
            //             color: Color(0xFFFFFFFF),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('asset/image/logo1.png'),
                    width: 59,
                    height: 77,
                  ),
                  Text(
                    'Sistem Akademik',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PoppinsEkstraBold',
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),

            // untuk bagian bawah login
            // Form Login 
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 800,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFBE6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PoppinsEkstraBold',
                            fontSize: 24,
                            color: Color(0xFF00712D),
                          ),
                        ),
                      ),
                      // Input Email
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 23),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 14,
                                color: Color(0xFF00712D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 53,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: const Color(0x20005A24),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: cUser,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            border: InputBorder.none,
                            hintText: 'Masukkan email',
                            hintStyle: TextStyle(
                              color: Color(0x8000712D),
                              fontSize: 14,
                            ),
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xff00712D)),
                          ),
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                            if (!emailRegex.hasMatch(value)) {
                              return 'Format email tidak valid';
                            }
                            return null;
                          },
                        ),
                      ),

                      // Input Password
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 14,
                                color: Color(0xFF00712D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 53,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: const Color(0x20005A24),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: cPass,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              border: InputBorder.none,
                              hintText: 'Masukkan password',
                              hintStyle: const TextStyle(
                                color: Color(0x8000712D),
                                fontSize: 14,
                              ),
                              prefixIcon: const Icon(Icons.lock,
                                  color: Color(0xff00712D)),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(
                                  passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xff00712D),
                                ),
                              )),
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),

                      // Error Message
                      if (_errorMessage.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            _errorMessage,
                            style: const TextStyle(
                                color: Colors.red, fontSize: 14),
                          ),
                        ),

                      const SizedBox(height: 20),

                      // Login Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                  email: cUser.text.trim(),
                                  password: cPass.text.trim(),
                                );
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                );
                              } on FirebaseAuthException catch (e) {
                                setState(() {
                                  if (e.code == 'user-not-found') {
                                    _errorMessage = 'Pengguna tidak ditemukan';
                                  } else if (e.code == 'wrong-password') {
                                    _errorMessage = 'Password salah';
                                  } else {
                                    _errorMessage = 'Login gagal: ${e.message}';
                                  }
                                });
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF9100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(double.infinity, 53),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Poppinsmedium',
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Register Navigation
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()),
                            );
                          },
                          child: Text(
                            'Belum punya akun? Register di sini',
                            style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 14,
                              color: greencolor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LupaPassword()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Lupa Password?',
                              style: TextStyle(
                                fontFamily: 'PoppinsBold',
                                fontSize: 14,
                                color: greencolor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
