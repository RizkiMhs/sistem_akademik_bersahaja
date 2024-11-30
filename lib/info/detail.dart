import 'package:flutter/material.dart';
import 'package:flutter_application_1/info/pesan.dart';
import 'package:flutter_application_1/utils/color.dart';

class detailpesan extends StatefulWidget {
  const detailpesan({super.key});

  @override
  State<detailpesan> createState() => _pengumumanState();
}

class _pengumumanState extends State<detailpesan> {
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
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "< Kembali",
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                height: 515,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: bgcolor,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(0, 4)),
                          ],
                          color: orangecolor),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: whitecolor),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  "ADM Prodi",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 16,
                                      color: whitecolor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "12.00 wib",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsRegular', fontSize: 11),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Informasi Pembayaran UKT",
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 18,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer porta accumsan sapien eget ornare. Aliquam id ipsum vitae elit semper hendrerit. Integer mollis in est id tincidunt. Etiam tincidunt enim at ultricies consectetur. Suspendisse faucibus elit quis egestas tincidunt. Nulla interdum eros orci, at malesuada velit porttitor in. Nam blandit lacus vel ante blandit elementum. Morbi id nisi laoreet, faucibus nulla ac, vestibulum magna. Sed in enim id est interdum elementum ut ac magna. Donec urna nisi, volutpat eget tellus sit amet, placerat consectetur neque. Nunc sed quam at leo consectetur maximus. Nulla tincidunt ipsum tincidunt purus fringilla, in bibendum erat suscipit. Phasellus at ultricies odio. Vivamus a euismod nibh, in sodales quam. Integer fringilla porttitor lectus, finibus finibus ipsum convallis ut. Curabitur sit amet commodo tortor, eu pretium nibh.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer porta accumsan sapien eget ornare. Aliquam id ipsum vitae elit semper hendrerit. Integer mollis in est id tincidunt. Etiam tincidunt enim at ultricies consectetur. Suspendisse faucibus elit quis egestas tincidunt. Nulla interdum eros orci, at malesuada velit porttitor in. Nam blandit lacus vel ante blandit elementum. Morbi id nisi laoreet, faucibus nulla ac, vestibulum magna. Sed in enim id est interdum elementum ut ac magna. Donec urna nisi, volutpat eget tellus sit amet, placerat consectetur neque. Nunc sed quam at leo consectetur maximus. Nulla tincidunt ipsum tincidunt purus fringilla, in bibendum erat suscipit. Phasellus at ultricies odio. Vivamus a euismod nibh, in sodales quam. Integer fringilla porttitor lectus, finibus finibus ipsum convallis ut. Curabitur sit amet commodo tortor, eu pretium nibh.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer porta accumsan sapien eget ornare. Aliquam id ipsum vitae elit semper hendrerit. Integer mollis in est id tincidunt. Etiam tincidunt enim at ultricies consectetur. Suspendisse faucibus elit quis egestas tincidunt. Nulla interdum eros orci, at malesuada velit porttitor in. Nam blandit lacus vel ante blandit elementum. Morbi id nisi laoreet, faucibus nulla ac, vestibulum magna. Sed in enim id est interdum elementum ut ac magna. Donec urna nisi, volutpat eget tellus sit amet, placerat consectetur neque. Nunc sed quam at leo consectetur maximus. Nulla tincidunt ipsum tincidunt purus fringilla, in bibendum erat suscipit. Phasellus at ultricies odio. Vivamus a euismod nibh, in sodales quam. Integer fringilla porttitor lectus, finibus finibus ipsum convallis ut. Curabitur sit amet commodo tortor, eu pretium nibh.",
                          style: TextStyle(
                              fontFamily: 'Poppinsmedium', fontSize: 11),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ))
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
