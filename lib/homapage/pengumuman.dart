
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/api/baseurl.dart';

class PengumumanModel {
  final String judul;
  final String kategori;
  final String isi;

  PengumumanModel({
    required this.judul,
    required this.kategori,
    required this.isi,
  });

  factory PengumumanModel.fromJson(Map<String, dynamic> json) {
    return PengumumanModel(
      judul: json['judul'] ?? '',
      kategori: json['kategori'] ?? '',
      isi: json['isi'] ?? '',
    );
  }
}

class PengumumanService {
  // static const String _baseUrl =
  //     'http://192.168.100.11:8000/api'; // Ganti IP & port sesuai Laravel kamu
  static const String _baseUrl = BaseUrl.baseUrl;

  static Future<List<PengumumanModel>> fetchPengumuman() async {
    final response = await http.get(Uri.parse("$_baseUrl/pengumuman"));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((json) => PengumumanModel.fromJson(json)).toList();
    } else {
      throw Exception("Gagal ambil data. Status: ${response.statusCode}");
    }
  }
}

class Pengumuman extends StatelessWidget {
  const Pengumuman({super.key});

  // List data pengumuman
  // final List<Map<String, String>> pengumumanList = const [
  //   {
  //     'judul': 'Informasi UKT',
  //     'kategori': 'Keuangan',
  //     'jam' : '12.00',
  //     'deskripsi':
  //         'Informasi mengenai pembayaran UKT untuk semester baru telah tersedia. Pastikan untuk melakukan pembayaran sebelum batas waktu.',
  //   },
  //   {
  //     'judul': 'Jadwal Ujian',
  //     'kategori': 'Akademik',
  //     'jam' : '13.00',
  //     'deskripsi':
  //         'Jadwal ujian semester ganjil telah diumumkan. Silakan cek portal akademik untuk informasi lebih lanjut.',
  //   },
  //   {
  //     'judul': 'Beasiswa Berprestasi',
  //     'kategori': 'Beasiswa',
  //     'jam' : '11.00',
  //     'deskripsi':
  //         'Pendaftaran Beasiswa Berprestasi telah dibuka. Segera daftar sebelum batas waktu pendaftaran.',
  //   },
  //   {
  //     'judul': 'Kegiatan Kampus',
  //     'kategori': 'Event',
  //     'jam' : '15.00',
  //     'deskripsi':
  //         'Akan ada seminar nasional pada tanggal 20 Maret. Mahasiswa diundang untuk menghadiri acara ini.',
  //   },
  // ];

  Future<List<PengumumanModel>> _getPengumuman() async {
    return await PengumumanService.fetchPengumuman();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PengumumanModel>>(
        future: _getPengumuman(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Terjadi kesalahan: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada pengumuman.'));
          }

          final pengumumanList = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              children: List.generate(pengumumanList.length, (index) {
                final pengumuman = pengumumanList[index];
                return GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailPengumuman(
                    //       pengumuman: {
                    //         'judul': pengumuman.judul,
                    //         'kategori': pengumuman.kategori,
                    //         'isi': pengumuman.isi,
                    //       },
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFBE6),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x20000000),
                          offset: Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pengumuman.judul,
                          style: const TextStyle(
                            fontFamily: 'PoppinsMedium',
                            fontSize: 16,
                            color: Color(0xFF00712D),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          pengumuman.kategori,
                          style: const TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12,
                            color: Color(0x8000712D),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 5,
                              height: 60,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                pengumuman.isi,
                                style: const TextStyle(
                                  fontFamily: 'PoppinsMedium',
                                  fontSize: 12,
                                  color: Color(0x60000000),
                                ),
                                textAlign: TextAlign.justify,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          );
        });
  }
}
