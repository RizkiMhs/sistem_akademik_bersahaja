import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login2.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF00712D),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                            'Regiter',
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
                                'username',
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
                                  'Masukkan username ', // Placeholder untuk input
                              hintStyle: TextStyle(
                                color: Color(0x8000712D),
                                fontSize: 14,
                              ),
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xff00712D)),
                            ),
                            style: TextStyle(color: Colors.black),
                            // Mengatur teks warna
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "NIM",
                                style: TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  fontSize: 14,
                                  color: Color(0xFF00712D),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 53,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: const Color(0x20005A24),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                border: InputBorder.none,
                                hintText: 'Masukkan NIM',
                                hintStyle:
                                    TextStyle(color: greencolor, fontSize: 14)),
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
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Password tidak boleh kosong';
                            //   }
                            //   return null;
                            // }, // Mengatur teks warna
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 0),
                              child: Text(
                                'Konfirmasi Passoword',
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
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Password tidak boleh kosong';
                            //   }
                            //   return null;
                            // }, // Mengatur teks warna
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              // if (formKey.currentState!.validate()) {
                              //   if (cUser.text == 'admin' && cPass.text == 'admin') {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()));
                              // } else {
                              //   cUser.text = '';
                              //   cPass.text = '';
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(
                              //       content: Text('Username atau Password Salah'),
                              //     ),
                              //   );
                              // }
                              // }
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
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginTwo()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Text("sudah punya akun"),
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
        ));
  }
}
