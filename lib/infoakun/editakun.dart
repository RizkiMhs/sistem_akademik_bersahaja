import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/infoakun/datadiri.dart';
import 'package:flutter_application_1/utils/color.dart';

class EditAkun extends StatefulWidget {
  const EditAkun({super.key});

  @override
  State<EditAkun> createState() => _EditAkunState();
}

class _EditAkunState extends State<EditAkun> {
  final _textController = TextEditingController();

  void _changeEmail() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = _auth.currentUser;

    if (user != null) {
      try {
        // Lakukan otentikasi ulang dengan kredensial pengguna
        final String email = user.email!;
        final String password =
            '123456'; // Anda bisa meminta pengguna untuk memasukkan password

        // Membuat kredensial pengguna
        AuthCredential credential =
            EmailAuthProvider.credential(email: email, password: password);

        // Lakukan re-authentication
        await user.reauthenticateWithCredential(credential);
        print("User re-authenticated");

        // Sekarang Anda bisa mengupdate email setelah otentikasi ulang
        await user.verifyBeforeUpdateEmail(_textController.text);
        print("Verification email sent to ${_textController.text}");
        showDialog(
            context: context,
            builder: (BuildContext) {
              return Alert();
            });
      } on FirebaseAuthException catch (e) {
        print("Error during re-authentication or email update: ${e.message}");
      }
    } else {
      print("User is not logged in");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              child: AppBar(
                backgroundColor: greencolor,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        "Informasi Akun",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                            color: whitecolor),
                      ),
                      Text(
                        "Universitas Malikussaleh",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 14,
                            color: whitecolor),
                      )
                    ],
                  ),
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "< Kembali",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 167,
                          height: 167,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage('asset/image/profile.png'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: orangecolor, width: 5),
                              borderRadius: BorderRadius.circular(20)
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black.withOpacity(0.2),
                              //     spreadRadius: 5,
                              //     blurRadius: 10,
                              //     offset: const Offset(0, 5),
                              //   ),
                              // ],
                              ),
                        ),
                        Positioned(
                          bottom: -20,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi untuk mengedit foto
                            },
                            child: const Icon(Icons.add_a_photo_rounded),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                minimumSize: Size(104, 104)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Email",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: TextField(
                              controller: _textController,
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                hintText:
                                    FirebaseAuth.instance.currentUser?.email ??
                                        'Tidak ada email',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppinssemibold',
                                  fontSize: 16,
                                ),
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Nama",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("TEs",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("NIM",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("230180222",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Fakultas",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("TEKNIK",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Prodi",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("Sistem Informasi",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Tempat Lahir",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("saturnus",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Tanggal Lahir",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("12 Desember 2023",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Alamat",
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2))
                          ],
                          color: whitecolor),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text("Lhokseumawe",
                              style: TextStyle(
                                fontFamily: 'Poppinssemibold',
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.white.withOpacity(0.30),
          child: GestureDetector(
            onTap: () {
              // Aksi untuk menyimpan data
              // _changeEmail();
              showDialog(
                  context: context,
                  builder: (BuildContext) {
                    return Alert();
                  });
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 65,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 2, 93, 168)),
                child: Center(
                  child: Text(
                    "Simpan",
                    style: TextStyle(
                        fontFamily: 'Poppinssemibold',
                        fontSize: 25,
                        color: whitecolor),
                  ),
                ),
              ),
            ),
          ),
        ),
        // bottomSheet: Container(
        //   width: double.infinity,
        //   height: 53,
        //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: const Color.fromARGB(255, 2, 128, 231),
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black.withOpacity(0.5),
        //             spreadRadius: 0,
        //             blurRadius: 4,
        //             offset: Offset(4, 4))
        //       ]),
        //   child: Center(
        //     child: Text(
        //       "Simpan",
        //       style: TextStyle(
        //           fontFamily: 'Poppinssemibold', fontSize: 25, color: whitecolor),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

// untuk membuat alert dialog
class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "Datadiri Berhasil Diubah",
          style: TextStyle(
            fontFamily: 'Poppinsmedium', // Font style
            fontSize: 18, // Ukuran font
            fontWeight: FontWeight.bold, // Menebalkan teks
            color: Color(0x50000000), // Warna teks
          ),
        ),
      ),
      content: Icon(
        Icons.beenhere_rounded,
        size: 71,
        color: Color(0xff4D4C50),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff1400FF)),
                child: Center(
                    child: Text(
                  "Oke",
                  style: TextStyle(
                      fontFamily: 'Poppinsmedium',
                      fontSize: 14,
                      color: whitecolor),
                ))))
      ],
    );
  }
}
