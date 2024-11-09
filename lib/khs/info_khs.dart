import 'package:flutter/material.dart';
import 'package:flutter_application_1/khs/khs1.dart';
import 'package:flutter_application_1/khs/khs2.dart';
import 'package:flutter_application_1/khs/khs3.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';

class InfoKhs extends StatefulWidget {
  const InfoKhs({super.key});

  @override
  State<InfoKhs> createState() => _InfoKhsState();
}

class _InfoKhsState extends State<InfoKhs> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              child: AppBar(
                backgroundColor: greencolor,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Text(
                        "Kartu Hasil Studi",
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
              // Container(
              //   padding: EdgeInsets.only(top: 80, bottom: 10),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: greencolor,
              //       borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(10),
              //           bottomRight: Radius.circular(10))),
              //   child: Column(
              //     children: [

              //     ],
              //   ),
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 12, bottom: 19),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext) => const Homepage()));
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
                ],
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
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      child: Text(
                        "Pilih Semester",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 16,
                            color: Colors.black),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const khs1()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 1",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs2()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: orangecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 2",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 3",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: orangecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 4",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 5",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: orangecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 6",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: greencolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 7",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (buildcontext) => const Khs3()));
                      },
                      child: Container(
                        width: 320,
                        height: 53,
                        decoration: BoxDecoration(
                          color: orangecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                "Semester 8",
                                style: TextStyle(
                                    fontFamily: 'Poppinssemibold',
                                    fontSize: 18,
                                    color: whitecolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
