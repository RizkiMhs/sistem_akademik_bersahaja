import 'package:flutter/material.dart';
import 'package:flutter_application_1/infoakun/datadiri.dart';
import 'package:flutter_application_1/utils/color.dart';

class EditAkun extends StatefulWidget {
  const EditAkun({super.key});

  @override
  State<EditAkun> createState() => _EditAkunState();
}

class _EditAkunState extends State<EditAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
              backgroundColor: greencolor,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 60),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const datadiri()));
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
                        child: Text("Rizki Aulia Nanda",
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
        child: Center(
          child: Container(
            width: double.infinity,
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
    );
  }
}
