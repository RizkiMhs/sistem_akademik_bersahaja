import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login.dart';
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
  final authC = Get.put(AuthController());
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
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 800,
                  width: double.infinity,
                  // margin: const EdgeInsets.only(top: 100),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 23),
                            child: Text(
                              'email',
                              // textAlign: TextAlign.left,
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
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            border: InputBorder
                                .none, // Menghilangkan border default
                            hintText:
                                'Masukkan email ', // Placeholder untuk input
                            hintStyle: TextStyle(
                              color: Color(0x8000712D),
                              fontSize: 14,
                            ),
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xff00712D)),
                          ),
                          style: TextStyle(color: Colors.black),
                          // Mengatur teks warna
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'password',
                              // textAlign: TextAlign.left,
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
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              border: InputBorder
                                  .none, // Menghilangkan border default
                              hintText:
                                  'Masukkan password', // Placeholder untuk input
                              hintStyle: TextStyle(
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
                                  color: Color(0xff00712D),
                                ),
                              )),
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          }, // Mengatur teks warna
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  authC.login(cUser.text, cPass.text);
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
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    'Belum punya akun?',
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //   Navigator.push(
                                      //       context,
                                      //       MaterialPageRoute(
                                      //           builder: (context) =>
                                      //               const Register()));
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext) =>
                                                  const Register()));
                                    },
                                    child: Text('Register',
                                        style: TextStyle(
                                          fontFamily: 'PoppinsBold',
                                          fontSize: 14,
                                          color: greencolor,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20),
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.of(context).pushReplacement(
                          //           MaterialPageRoute(
                          //               builder: (BuildContext) =>
                          //                   const Register()));
                          //     },
                          //     style: ElevatedButton.styleFrom(
                          //       backgroundColor: const Color(0x20FF9100),
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       minimumSize: const Size(double.infinity, 53),
                          //     ),
                          //     child: const Text(
                          //       'Register',
                          //       style: TextStyle(
                          //         fontFamily: 'Poppinsmedium',
                          //         fontSize: 14,
                          //         color: Color(0xFFFFFFFF),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
