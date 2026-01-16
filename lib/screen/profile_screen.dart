import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Color bgColor = Color(0xFFD9D9D9);
const Color primaryColor = Color(0xFF2D3C4F);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image with Border
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://media-cgk1-2.cdn.whatsapp.net/v/t61.24694-24/516870564_24172294579096052_2447976753948022883_n.jpg?ccb=11-4&oh=01_Q5Aa3gHIxwdg050VrCCPsiqje00KRfFxbWAdbzMscKe0g7Hk2g&oe=6977643F&_nc_sid=5e03e0&_nc_cat=104',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Agun Firmansyah",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final uri = Uri.parse(
                        'https://www.dicoding.com/users/agun1505/academies');
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
                    "Menuju Profile",
                    style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
