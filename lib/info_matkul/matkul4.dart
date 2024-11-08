import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/informasi_matkul.dart';

class Matkul4 extends StatefulWidget {
  const Matkul4({super.key});

  @override
  State<Matkul4> createState() => _Matkul4State();
}

class _Matkul4State extends State<Matkul4> {
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
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Text(
                        "Informasi Matakuliah",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                            color: whitecolor),
                      ),
                      Text(
                        "Semester 4",
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
            children: <Widget>[
              // Container(
              //   padding: const EdgeInsets.only(top: 80, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: greencolor,
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(10),
              //       bottomRight: Radius.circular(10),
              //     ),
              //   ),
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
              //         "Semester 4",
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
                    padding: EdgeInsets.only(left: 20, top: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext) => const informasi()));
                      },
                      child: Text(
                        "< Kembali",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Pak Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bg2color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Buk Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Pak Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bg2color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Buk Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Pak Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bg2color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Buk Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Pak Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bg2color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Buk Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Pak Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                          color: bg2color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 5,
                            color: greencolor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15)),
                              Text(
                                "STATISTIKA DAN PROBABILITAS",
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Buk Dosen S.Kom,M.kom",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
