import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login2.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/controllers/auth_controller.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  TextEditingController cConfirmPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool passToggle = true;

  // Instance of AuthController
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
          backgroundColor: const Color(0xFF00712D),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('asset/image/logo1.png'),
                        width: 59,
                        height: 77,
                      ),
                      const Text(
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
                              'Register',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'PoppinsEkstraBold',
                                fontSize: 24,
                                color: Color(0xFF00712D),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Username Field
                          buildInputField(
                              controller: cUser,
                              hintText: 'Masukkan Email',
                              labelText: 'Email',
                              icon: Icons.person),
                          const SizedBox(height: 20),
                          // Password Field
                          buildPasswordField(
                              controller: cPass,
                              hintText: 'Masukkan password',
                              labelText: 'Password'),
                          const SizedBox(height: 20),
                          // Confirm Password Field
                          buildPasswordField(
                              controller: cConfirmPass,
                              hintText: 'Konfirmasi password',
                              labelText: 'Konfirmasi Password'),
                          const SizedBox(height: 20),
                          // Register Button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  if (cPass.text == cConfirmPass.text) {
                                    // Call register function
                                    authController.register(
                                      cUser.text.trim(),
                                      cPass.text.trim(),
                                    );
                                    // Navigate to Homepage if successful
                                    // Get.off(() => const Homepage());
                                    Get.snackbar(
                                        "success", "berhasil register");
                                  } else {
                                    Get.snackbar('Error',
                                        'Password dan konfirmasi tidak cocok');
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
                                'Register',
                                style: TextStyle(
                                  fontFamily: 'Poppinsmedium',
                                  fontSize: 14,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 20, right: 10),
                                child: Text("Sudah punya akun"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget buildInputField(
      {required TextEditingController controller,
      required String hintText,
      required String labelText,
      required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0x20005A24),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: Icon(icon, color: const Color(0xff00712D)),
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$labelText tidak boleh kosong';
          }
          return null;
        },
      ),
    );
  }

  Widget buildPasswordField(
      {required TextEditingController controller,
      required String hintText,
      required String labelText}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0x20005A24),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: passToggle,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: const Icon(Icons.lock, color: Color(0xff00712D)),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                passToggle = !passToggle;
              });
            },
            child: Icon(
              passToggle ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xff00712D),
            ),
          ),
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$labelText tidak boleh kosong';
          }
          return null;
        },
      ),
    );
  }
}
