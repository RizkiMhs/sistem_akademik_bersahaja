import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bahan%20kuliah/bahankuliah.dart';
import 'package:flutter_application_1/info/pesan.dart';
import 'package:flutter_application_1/infoakun/infoakun.dart';
import 'package:flutter_application_1/jadwal%20kuliah/menu_jadwal.dart';
import 'package:flutter_application_1/khs/info_khs.dart';
import 'package:flutter_application_1/krs/krs.dart';
import 'package:flutter_application_1/saran/saran.dart';
import 'package:flutter_application_1/tagihan/tagihan.dart';
import 'package:flutter_application_1/trNilai/transkipnilai.dart';
import 'package:flutter_application_1/views/detail_pmn.dart';
import 'package:flutter_application_1/views/informasi_matkul.dart';
import 'package:flutter_application_1/views/login2.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/controllers/auth_controller.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/api/baseurl.dart';
import 'package:flutter_application_1/homapage/pengumuman.dart';




class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(50),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      //     child: AppBar(
      //       backgroundColor: greencolor,
      //       flexibleSpace: Padding(
      //         padding: const EdgeInsets.only(top: 35),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 0),
      //               child: Text(
      //                 "Sistem Akademik",
      //                 style: TextStyle(
      //                     fontFamily: 'Poppinsmedium',
      //                     fontSize: 16,
      //                     color: whitecolor),
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(left: 0, top: 1),
      //               child: Text(
      //                 "Universitas Malikussaleh",
      //                 style: TextStyle(
      //                     fontFamily: 'PoppinsRegular',
      //                     fontSize: 12,
      //                     color: whitecolor),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 81,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF00712D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      'Sistem Akademik',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppinsmedium',
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: Text(
                      'Universitas Malikussaleh',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 82,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFFF9100),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Image(
                      image: AssetImage('asset/image/profile.png'),
                      width: 57,
                      height: 57,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Selamat Datang',
                          style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Text(
                          'Rizki',
                          style: const TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        // Text(
                        //   FirebaseAuth.instance.currentUser?.email
                        //           ?.split('@')[0] ??
                        //       'Tidak ada email',
                        //   style: const TextStyle(
                        //     fontFamily: 'Poppinsmedium',
                        //     fontSize: 16,
                        //     color: Color(0xFFFFFFFF),
                        //   ),
                        // ),
                        const Text(
                          '230199080',
                          style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Menu Akademik',
                  style: TextStyle(
                    fontFamily: 'Poppinsmedium',
                    fontSize: 16,
                    color: Color(0xFF00712D),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const jadwalkuliah()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 9,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF00712D),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/Vector.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text(
                              'Jadwal \n Kuliah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const bahankuliah()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9100),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/School.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Bahan \nKuliah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const Transkipnilai()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFF00712D),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/Exam.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Transkrip\nNilai',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const informasi()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9100),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/Book Reading.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Informasi\nMatakuliah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const KrsMenu()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFF00712D),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/Ereader.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Text(
                              'Kartu\nRencana\nStudi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const InfoKhs()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9100),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image.asset(
                              'asset/image/Knowledge Sharing.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Kartu Hasil\nStudi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const Saran()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFF00712D),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image: AssetImage('asset/image/Info Popup.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Kritik\nDan Saran',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const Tagihan()));
                    },
                    child: Container(
                      width: 100,
                      height: 122,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9100),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Image(
                              image:
                                  AssetImage('asset/image/Order Completed.png'),
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Tagihan\nUKT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsmedium',
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // Container(
                  //   width: 100,
                  //   height: 122,
                  //   margin: const EdgeInsets.only(top: 9),
                  //   decoration: const BoxDecoration(
                  //     // color: Color(0xFFFF9100),
                  //     gradient: LinearGradient(
                  //         colors: [Color(0xffFF9100), Color(0xFF00712D)],
                  //         begin: Alignment.topLeft,
                  //         end: Alignment.bottomRight),
                  //     borderRadius: BorderRadius.all(Radius.circular(5)),
                  //   ),
                  //   child: const Column(
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsets.only(top: 8),
                  //         child: Image(
                  //           image:
                  //               AssetImage('asset/image/Order Completed.png'),
                  //           width: 60,
                  //           height: 60,
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: EdgeInsets.only(top: 15),
                  //         child: Text(
                  //           'Tagihan\nUKT',
                  //           textAlign: TextAlign.center,
                  //           style: TextStyle(
                  //             fontFamily: 'Poppinsmedium',
                  //             fontSize: 14,
                  //             color: Color(0xFFFFFFFF),
                  //             height: 1.1,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Pengumuman',
                  style: TextStyle(
                    fontFamily: 'Poppinsmedium',
                    fontSize: 16,
                    color: Color(0xFF00712D),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            
            Pengumuman()

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFF9100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const Pesan()));
                  },
                  child: Container(
                    child: Image.asset('asset/image/Circled Envelope.png'),
                  ),
                ),
                // SizedBox(
                //   width: 68,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => const Homepage()));
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset('asset/image/Home.png'),
                  ),
                ),
                // SizedBox(
                //   width: 62,
                // ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => const infoakun()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset('asset/image/Male User.png'),
                    )),
              ],
            ),
          ),
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Wrap(
        //       spacing: 65,
        //       children: <Widget>[
        //         GestureDetector(
        //           onTap: () {
        //             // Navigator.of(context).push(MaterialPageRoute(
        //             //     builder: (BuildContext) => const Pesan()));
        //           },
        //           child: Container(
        //             padding: EdgeInsets.symmetric(vertical: 5),
        //             child: Image.asset('asset/image/Circled Envelope.png'),
        //           ),
        //         ),
        //         Container(
        //           padding: EdgeInsets.symmetric(vertical: 6),
        //           width: 56,
        //           height: 56,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(15),
        //             color: Colors.white,
        //           ),
        //           child: Image.asset('asset/image/Home.png'),
        //         ),
        //         Container(
        //           padding: EdgeInsets.symmetric(vertical: 5),
        //           child: Image.asset('asset/image/Male User.png'),
        //         )
        //       ],
        //     ),
        //   ],

        //   IconButton(
        //     icon: Icon(Icons.home),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.notifications),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.person),
        //     onPressed: () {},
        //   ),
      ),
    );
  }
}
