import 'package:flutter/material.dart';
import '../model/data_kelas.dart';
import 'package:url_launcher/url_launcher.dart';

const Color bgColor = Color(0xFFD9D9D9);
const Color primaryColor = Color(0xFF2D3C4F);

class DetailMobilePage extends StatelessWidget {
  final DataKelas kelas;

  const DetailMobilePage({super.key, required this.kelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Kembali',
          style: TextStyle(
              color: primaryColor, fontSize: 16, fontFamily: 'Quicksand'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  kelas.gambarKelas,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: primaryColor, width: 1),
                ),
                child: Column(
                  children: [
                    Text(
                      kelas.namaKelas,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Divider(color: primaryColor.withOpacity(0.3), thickness: 1),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.school_outlined,
                            size: 20, color: primaryColor),
                        const SizedBox(width: 8),
                        Text(
                          kelas.levelKelas,
                          style: TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                              fontFamily: 'Quicksand'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 20, color: primaryColor),
                        const SizedBox(width: 8),
                        Text(
                          kelas.jamBelajar,
                          style: TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                              fontFamily: 'Quicksand'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.people_outline,
                            size: 20, color: primaryColor),
                        const SizedBox(width: 8),
                        Text(
                          kelas.siswaTerdaftar,
                          style: TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                              fontFamily: 'Quicksand'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(color: primaryColor.withOpacity(0.3), thickness: 1),
                    const SizedBox(height: 12),
                    Text(
                      kelas.deskripsiKelas,
                      style: TextStyle(
                          fontSize: 13,
                          color: primaryColor,
                          fontFamily: 'Quicksand'),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final uri = Uri.parse(kelas.linkKelas);
                    if (await canLaunchUrl(uri)) {
                      launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[800],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Menuju Kelas",
                    style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
