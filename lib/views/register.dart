import 'package:firebase_auth/firebase_auth.dart';
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
  TextEditingController cNIM = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String _errorMessage = '';

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
                      child: SingleChildScrollView(
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
                            // Pesan Error Global
                            if (_errorMessage.isNotEmpty)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  _errorMessage,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 14),
                                ),
                              ),

                            // Input Email
                            _buildInputField(
                              label: 'Email',
                              hint: 'Masukkan email',
                              controller: cUser,
                              icon: Icons.person,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email tidak boleh kosong';
                                }
                                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                    .hasMatch(value)) {
                                  return 'Format email tidak valid';
                                }
                                return null;
                              },
                            ),

                            // Input NIM
                            _buildInputField(
                              label: 'NIM',
                              hint: 'Masukkan NIM',
                              controller: cNIM,
                              icon: Icons.school,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'NIM tidak boleh kosong';
                                }
                                return null;
                              },
                            ),

                            // Input Password
                            _buildPasswordField(
                              label: 'Password',
                              hint: 'Masukkan password',
                              controller: cPass,
                            ),

                            // Input Konfirmasi Password
                            _buildPasswordField(
                              label: 'Konfirmasi Password',
                              hint: 'Masukkan konfirmasi password',
                              controller: cConfirmPass,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Konfirmasi password tidak boleh kosong';
                                }
                                if (value != cPass.text) {
                                  return 'Password tidak cocok';
                                }
                                return null;
                              },
                            ),

                            // Tombol Register
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    try {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                        email: cUser.text.trim(),
                                        password: cPass.text.trim(),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Registrasi berhasil')),
                                      );
                                      Navigator.pop(context);
                                    } on FirebaseAuthException catch (e) {
                                      setState(() {
                                        if (e.code == 'email-already-in-use') {
                                          _errorMessage =
                                              'Email sudah digunakan';
                                        } else if (e.code == 'weak-password') {
                                          _errorMessage =
                                              'Password terlalu lemah';
                                        } else {
                                          _errorMessage =
                                              'Registrasi gagal: ${e.message}';
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
                                  'Register',
                                  style: TextStyle(
                                    fontFamily: 'Poppinsmedium',
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),

                            // Navigasi ke Login
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginTwo()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Sudah punya akun? Login di sini",
                                    style: TextStyle(
                                      color: Color(0xFF00712D),
                                      fontSize: 14,
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

  Widget _buildInputField({
    required String label,
    required String hint,
    required TextEditingController controller,
    required IconData icon,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'PoppinsRegular',
              fontSize: 14,
              color: Color(0xFF00712D),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 53,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0x20005A24),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0x8000712D),
                fontSize: 14,
              ),
              prefixIcon: Icon(icon, color: const Color(0xff00712D)),
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  // Widget untuk Password Field
  Widget _buildPasswordField({
    required String label,
    required String hint,
    required TextEditingController controller,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'PoppinsRegular',
              fontSize: 14,
              color: Color(0xFF00712D),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 53,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0x20005A24),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: passToggle,
            validator: validator ??
                (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0x8000712D),
                fontSize: 14,
              ),
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
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
