import 'package:flutter/material.dart';
import 'package:flutter_application_1/khs/info_khs.dart';
import 'package:flutter_application_1/utils/color.dart';

class Khs3 extends StatefulWidget {
  const Khs3({super.key});

  @override
  State<Khs3> createState() => _khs3State();
}

class _khs3State extends State<Khs3> {
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
                        "Semester 3",
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
                      Center(
                        child: Text(
                          "Belum Ada KHS",
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
