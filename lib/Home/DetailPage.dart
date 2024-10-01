import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 255,
        flexibleSpace: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/header.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Apa itu Bank Sampah keliling?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "   Bank sampah keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling menggunakan kendaraan khusus untuk mengumpulkan sampah dari rumah ke rumah atau dari lokasi yang telah ditentukan.",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "   Setelah dikumpulkan, sampah tersebut dibersihkan, dipilah, dan diolah menjadi bahan daur ulang. Melalui bank sampah keliling, masyarakat diberikan kesempatan untuk berpartisipasi aktif dalam menjaga lingkungan sekaligus memperoleh insentif berupa hadiah atau uang sebagai imbalan dari sampah yang mereka berikan.",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "   Dengan demikian, bank sampah keliling memiliki peran penting dalam mengedukasi masyarakat tentang pentingnya pengelolaan sampah yang berkelanjutan dan membantu mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir.",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
