import 'package:flutter/material.dart';
import 'package:flutter_application_1/tagihan/riwayat.dart';
// import 'package:portal_unimal/riwayat.dart';

class Tagihan extends StatefulWidget {
  const Tagihan({super.key});

  @override
  State<Tagihan> createState() => _TagihanState();
}

class _TagihanState extends State<Tagihan> {
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
              height: 130,
              padding: const EdgeInsets.only(top: 23, bottom: 10),
              decoration: const BoxDecoration(
                  color: Color(0xff00712D),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      "Tagihan UKT",
                      style: TextStyle(
                          fontFamily: 'poppinsbold',
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      "Universitas Malikussaleh",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_rounded),
                    Text(
                      'Kembali',
                      style: TextStyle(
                          fontFamily: 'poppinsregular',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  color: const Color(0xffFF9100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 27, left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Uden",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NIM',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "230180077",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Prodi',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Sistem Informasi",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Semester',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Ganjil 2024/2025",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Maksismum SKS',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "24",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dosen Wali',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Pak Dosen. M.Kom",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Tagihan',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "500.000",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 1,
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Status Pembayaran",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.green, width: 2),
                          ),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 5, bottom: 5),
                          child: Text(
                            'selesai',
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                color: Color(0xffCCDBBF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.backup_sharp),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Upload Bukti Pembayaran",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Riwayat()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 5),
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.only(left: 20, right: 21),
                decoration: BoxDecoration(
                    color: Color(0xff005A24),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      'Lihat Riwayat Tagihan',
                      style: TextStyle(fontSize: 25, color: Colors.white),
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
