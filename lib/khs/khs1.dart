import 'package:flutter/material.dart';
import 'package:flutter_application_1/khs/info_khs.dart';
import 'package:flutter_application_1/utils/color.dart';

class khs1 extends StatefulWidget {
  const khs1({super.key});

  @override
  State<khs1> createState() => _khs1State();
}

class _khs1State extends State<khs1> {
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
                        "Semester 1",
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
              //   width: double.infinity,
              //   padding: EdgeInsets.only(top: 80, bottom: 10),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //         bottomLeft: Radius.circular(10),
              //         bottomRight: Radius.circular(10),
              //       ),
              //       color: greencolor),
              //   child: Column(
              //     children: [
              //       Text(
              //         "Kartu Hasil Studi",
              //         style: TextStyle(
              //             fontFamily: 'PoppinsBold',
              //             fontSize: 25,
              //             color: whitecolor),
              //       ),
              //       Text(
              //         "Semester 1",
              //         style: TextStyle(
              //             fontFamily: 'PoppinsRegular',
              //             fontSize: 14,
              //             color: whitecolor),
              //       )
              //     ],
              //   ),
              // ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext) => const InfoKhs()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 23),
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
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgcolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "SKS : 2",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: greencolor,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                    color: whitecolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: whitecolor,
          child: GestureDetector(
            onTap: () {
              print("sukses");
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: orangecolor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "IP Semester : 4.00",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 10,
                              color: whitecolor),
                        ),
                        Text(
                          "IP kumulatif : 4.00",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 10,
                              color: whitecolor),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(child: Image.asset('asset/image/Print.png'))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
