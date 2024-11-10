import 'package:flutter/material.dart';
import 'package:flutter_application_1/bahan%20kuliah/bahankuliah.dart';
import 'package:flutter_application_1/utils/color.dart';

class detailbahan extends StatefulWidget {
  const detailbahan({super.key});

  @override
  State<detailbahan> createState() => _detailbahanState();
}

class _detailbahanState extends State<detailbahan> {
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
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Text(
                          "Bahan Pembelajaran",
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 25,
                              color: whitecolor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            "Universitas Malikussaleh",
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 14,
                                color: whitecolor),
                          ),
                        )
                      ],
                    )),
              ),
            )),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '< Kembali',
                    style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 3,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: orangecolor,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Nama Matkul",
                style: TextStyle(
                    fontFamily: 'PoppinsBold',
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Dosen Pengampu",
                style: TextStyle(
                    fontFamily: 'PoppinsBold',
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 3,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: orangecolor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 82,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bgcolor),
              child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bahan Pertemuan 1",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 82,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bgcolor),
              child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bahan Pertemuan 1",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 82,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bgcolor),
              child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bahan Pertemuan 1",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 82,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bgcolor),
              child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bahan Pertemuan 1",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
