import 'package:flutter/material.dart';
import 'package:flutter_application_1/krs/cetakkrs.dart';
import 'package:flutter_application_1/krs/pilihmk.dart';

class KrsMenu extends StatefulWidget {
  const KrsMenu({super.key});

  @override
  State<KrsMenu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<KrsMenu> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 80, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: const Color(0xff00712D),
              ),
              child: Column(
                children: [
                  Text(
                    "Kartu Rencana Studi",
                    style: TextStyle(
                        fontFamily: 'Poppinsbold',
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  Text(
                    "Universitas Malikussaleh",
                    style: TextStyle(
                        fontFamily: 'Poppinsregular', color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          "<",
                          style: TextStyle(
                              fontFamily: 'Poppinsbold',
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Text(
                          "Kembali",
                          style: TextStyle(
                              fontFamily: 'Poppinsbold',
                              fontSize: 25,
                              color: Color(0xffBF0000)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Nama',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'M Roy Randy',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 370,
                    height: 1,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'NIM',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                            '230180113',
                            style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 370,
                    height: 1,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Prodi',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                            'Sistem Informasi',
                            style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 370,
                    height: 1,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Semester',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                            'Ganjil 2024/2025',
                            style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 370,
                    height: 1,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Maksimum SKS',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                            '24',
                            style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 370,
                    height: 1,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Dosen Wali',
                          style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                            'Pak Dosen.M.Kom',
                            style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 37,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext) => const PilihMataKuliah()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xff005A24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext) =>
                                  const PilihMataKuliah()),
                        );
                      },
                      child: const Text(
                        'Pilih Matakuliah',
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext) => const Cetakkrs()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xff005A24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext) => const Cetakkrs()),
                        // );
                      },
                      child: const Text(
                        'Lihat KRS',
                        style: TextStyle(
                            fontFamily: 'Poppinsmedium',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
