import 'package:flutter/material.dart';
import 'package:flutter_application_1/info_matkul/matkul1.dart';
import 'package:flutter_application_1/info_matkul/matkul2.dart';
import 'package:flutter_application_1/info_matkul/matkul3.dart';
import 'package:flutter_application_1/info_matkul/matkul4.dart';
import 'package:flutter_application_1/info_matkul/matkul5.dart';
import 'package:flutter_application_1/info_matkul/matkul6.dart';
import 'package:flutter_application_1/info_matkul/matkul7.dart';
import 'package:flutter_application_1/info_matkul/matkul8.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';

class informasi extends StatefulWidget {
  const informasi({super.key});

  @override
  State<informasi> createState() => _informasiState();
}

class _informasiState extends State<informasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
              backgroundColor: greencolor,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Informasi Matakuliah",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                            color: whitecolor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Text(
                        "Universitas Malikussaleh",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 14,
                            color: whitecolor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.only(top: 80, bottom: 6),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: greencolor,
              //       borderRadius: BorderRadius.only(
              //         bottomLeft: Radius.circular(10),
              //         bottomRight: Radius.circular(10),
              //       )),
              //   child: Column(
              //     children: <Widget>[
              //       Text(
              //         "Informasi Matakuliah",
              //         style: TextStyle(
              //             fontFamily: 'PoppinsBold',
              //             fontSize: 25,
              //             color: whitecolor),
              //       ),
              //       Text(
              //         "Universitas Malikussaleh",
              //         style: TextStyle(
              //             fontFamily: 'PoppinsRegular',
              //             fontSize: 14,
              //             color: whitecolor),
              //       )
              //     ],
              //   ),
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext) => const Homepage()));
                        },
                        child: Text(
                          "< Kembali",
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      )),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 9, bottom: 32),
                child: Container(
                  color: bgcolor,
                  width: 340,
                  height: 133,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Keterangan : \nInformasi Matakuliah Ditawarkan berisi seluruh matakuliah yang ditawarkan pada semester aktif. Dari seluruh matakuliah yang terdapat pada daftar, setiap matakuliah mempunyai aturan tersendiri bergantung pada program studi, kurikulum, dan aturan akademik lainnya. Untuk lebih jelasnya, anda dapat melihat detil kelas.",
                      style: TextStyle(
                          fontFamily: 'Poppinssemibold',
                          fontSize: 10,
                          color: Colors.black),
                      maxLines: 8,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    Container(
                      width: 320,
                      height: 2,
                      color: orangecolor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "semua matakuliah \nyang ditawarkan : ",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 12,
                            color: Colors.black),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 320,
                      height: 2,
                      color: orangecolor,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext) => const Matkul1()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 53,
                          decoration: BoxDecoration(
                            color: greencolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Semester 1",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        const Matkul2()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: double.infinity,
                            height: 53,
                            decoration: BoxDecoration(
                              color: orangecolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Semester 2",
                                  style: TextStyle(
                                      fontFamily: 'Poppinssemibold',
                                      fontSize: 18,
                                      color: whitecolor),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        const Matkul3()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: double.infinity,
                            height: 53,
                            decoration: BoxDecoration(
                              color: greencolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Semester 3",
                                  style: TextStyle(
                                      fontFamily: 'Poppinssemibold',
                                      fontSize: 18,
                                      color: whitecolor),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        const Matkul4()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: double.infinity,
                            height: 53,
                            decoration: BoxDecoration(
                              color: orangecolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Semester 4",
                                  style: TextStyle(
                                      fontFamily: 'Poppinssemibold',
                                      fontSize: 18,
                                      color: whitecolor),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext) => const Matkul5()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 53,
                          decoration: BoxDecoration(
                            color: greencolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Semester 5",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext) => const Matkul6()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 53,
                          decoration: BoxDecoration(
                            color: orangecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Semester 6",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext) => const Matkul7()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 53,
                          decoration: BoxDecoration(
                            color: greencolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Semester 7",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext) => const Matkul8()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 53,
                          decoration: BoxDecoration(
                            color: orangecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Semester 8",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
