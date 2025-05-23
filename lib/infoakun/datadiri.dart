import 'package:flutter/material.dart';
import 'package:flutter_application_1/infoakun/editakun.dart';
import 'package:flutter_application_1/infoakun/infoakun.dart';
import 'package:flutter_application_1/utils/color.dart';

class datadiri extends StatefulWidget {
  const datadiri({super.key});

  @override
  State<datadiri> createState() => _datadiriState();
}

class _datadiriState extends State<datadiri> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
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
              SizedBox(
                height: 18,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("< Kembali",
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                          )),
                    )),
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
                      height: 50,
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditAkun()));
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 65,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: orangecolor,
                ),
                child: Center(
                  child: Text(
                    "Edit Data",
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
      ),
    );
  }
}
