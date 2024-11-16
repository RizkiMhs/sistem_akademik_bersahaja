import 'package:flutter/material.dart';

class Transkipnilai extends StatefulWidget {
  const Transkipnilai({super.key});

  @override
  State<Transkipnilai> createState() => _TranskipnilaiState();
}

class _TranskipnilaiState extends State<Transkipnilai> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        //       bottomSheet:
        // Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: Colors.white,
        //   child: Container(
        //     margin: EdgeInsets.only(left: 20, right: 20),
        //     decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.5),
        //           spreadRadius: 0,
        //           blurRadius: 4,
        //           offset: Offset(5, 5),
        //         ),
        //       ],
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         ElevatedButton(
        //           onPressed: () {
        //           },
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: Color(0xffFF9100),
        //             foregroundColor: Colors.white,
        //             fixedSize: Size(350, 48),
        //             shadowColor: Colors.black.withOpacity(0.5),
        //             elevation: 5,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //           ),
        //                   child:Row(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(top: 5,left: 1),
        //                       child: Column(
        //                         children: [
        //                           Text('IP semester : 4.00 ',
        //                           style: TextStyle(
        //                             fontFamily: "PoppinsInterSemiBold",
        //                             fontSize: 9,
        //                             color: Colors.white,
        //                           ),),
        //                           SizedBox(height: 10,),
        //                           Text("IP Kumulatif : 4.00",style: TextStyle(
        //                             fontFamily: "PoppinsInterSemiBold",
        //                             fontSize: 9,
        //                             color: Colors.white,
        //                           ),)
        //                         ],
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(left: 175),
        //                       child: Image.asset("assets/images/Print.png",),
        //                     ),
        //                   ],
        //                   ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
              backgroundColor: Color(0XFF00712D),
              flexibleSpace: const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(
                      'Transkip Nilai',
                      style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        'universitas malikussaleh',
                        style: TextStyle(
                          fontFamily: "Poppinsregular",
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "Kembali",
                      style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 20,
                        color: Color(0XFFBF0000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // mkmk
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0X2000712D),
                                border: Border.all(
                                  color:
                                      const Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: const Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0X2000712D),
                                border: Border.all(
                                  color:
                                      const Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: const Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 53,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0X2000712D),
                                border: Border.all(
                                  color: Color(0Xff00712D), // Warna outline
                                  width: 2.0, // Ketebalan outline
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 10, bottom: 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TEKNOLOGI INFORMASI DAN KEWIRAUSAHAAN',
                                          style: TextStyle(
                                            fontFamily: "PoppinsBold",
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'SKS 2',
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Nilai : 4.00",
                                          style: TextStyle(
                                              fontFamily: "PoppinsRegular",
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Center(
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                fontFamily: "PoppinsBold",
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0XFF00712D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 45,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0XFF1400FF),
                              ),
                              child: Center(
                                child: Text(
                                  "oke",
                                  style: TextStyle(
                                    fontFamily: "PoppinsMedium",
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                      ],
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          "File Berhasil Di Simpan",
                          style: TextStyle(
                            fontFamily: "PoppinsMedium ",
                            fontSize: 20,
                            color: Color(0x50000000),
                          ),
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(30),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/cloud_done.png"),
                        ],
                      ),
                    ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFF9100),
            foregroundColor: Colors.white,
            fixedSize: Size(350, 48),
            shadowColor: Colors.black.withOpacity(0.5),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 1),
                child: Column(
                  children: [
                    Text(
                      'IP semester : 4.00 ',
                      style: TextStyle(
                        fontFamily: "PoppinsInterSemiBold",
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "IP Kumulatif : 4.00",
                      style: TextStyle(
                        fontFamily: "PoppinsInterSemiBold",
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 175),
                child: Image.asset(
                  "assets/images/Print.png",
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
