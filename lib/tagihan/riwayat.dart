import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                padding: EdgeInsets.only(top: 23, bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xff00712D),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text(
                        'Riwayat Pembayaran',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Universitas Malikussaleh',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text(
                        'Kembali',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'poppinsregular',
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 125,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  color: Color(0xffFF9100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 5, right: 5),
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Ganjil 2024/2025",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Pak Dosen. M.Kom",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "500.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                height: 5,
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
                              'Lunas',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              //batas
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 125,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  color: Color(0xffFF9100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 5, right: 5),
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Ganjil 2024/2025",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Pak Dosen. M.Kom",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "500.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                height: 5,
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
                              'Lunas',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 125,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  color: Color(0xffFF9100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 5, right: 5),
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Ganjil 2024/2025",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Pak Dosen. M.Kom",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "500.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                height: 5,
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
                              'Lunas',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 125,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  color: Color(0xffFF9100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 5, right: 5),
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Ganjil 2024/2025",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Pak Dosen. M.Kom",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "500.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                height: 5,
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
                              'Lunas',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
