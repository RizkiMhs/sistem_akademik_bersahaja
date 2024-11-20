import 'package:flutter/material.dart';
// import 'package:flutter_application_1/views/home.dart';
// import 'package:flutter_application_1/utils/color.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _HomeState();
}

class _HomeState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 114, 28),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(34, 60, 0, 0),
                      child: Image.asset('asset/image/logo1.png',
                          width: 59, height: 77),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 65, 0, 0),
                        child: Text(
                          "SELAMAT DATANG",
                          style: TextStyle(
                              fontFamily: 'koulenregular',
                              fontSize: 40,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "Sistem Akademik",
                          style: TextStyle(
                              fontFamily: 'PoppinsEkstraBold',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 250),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Username',
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular', fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: ' ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 113, 177, 151),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text('Password',
                              style: TextStyle(
                                  fontFamily: 'PoppinsRegular', fontSize: 16)),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: ' ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 113, 177, 151),
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    const SizedBox(height: 20),
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
