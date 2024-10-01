import "package:flutter/material.dart";
import "DetailPage.dart";

class HomePage extends StatelessWidget {
  final String username;
  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selamat Pagi $username"),
            SizedBox(height: 2),
            Text(
              "Yuk buat perubahan positif bagi lingkungan",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 100, 0, 117),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Apa itu Bank Sampah?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 8),
                        Text(
                          "Bank sampah akan ada ditempat anda",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage()),
                      );
                    },
                    child: Text("Pelajari teknis lebih lanjut"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                  ),
                  SizedBox(height: 16),
                  ...scheduleList.map((schedule) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              schedule.coverageArea,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            ListTile(
                              leading: Image.asset(
                                'assets/${schedule.imageUrl}',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(schedule.wasteBankName),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(schedule.implementationDate),
                                  SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Start "),
                                      Text("End "),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        schedule.startTime + " WIB",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        schedule.endTime + " WIB",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Log Out"),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageUrl;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageUrl,
  });
}

var scheduleList = [
  Schedule(
    coverageArea: 'Suryodiningratan dan sekitarnya',
    wasteBankName: 'Bank Sampah Gemah Ripah',
    implementationDate: '2024-10-05',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'bank_sampah_pakem.png',
  ),
  Schedule(
    coverageArea: 'Prawirodirjan dan sekitarnya',
    wasteBankName: 'Bank Sampah Hijau Lestari',
    implementationDate: '2024-10-06',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'bank_sampah_4s.jpeg',
  ),
  Schedule(
    coverageArea: 'Mantrijeron dan sekitarnya',
    wasteBankName: 'Bank Sampah Bersih Sejahtera',
    implementationDate: '2024-10-07',
    startTime: '07:30',
    endTime: '09:30',
    imageUrl: 'bank_sampah_sewulan.png',
  ),
  Schedule(
    coverageArea: 'Ngupasan dan sekitarnya',
    wasteBankName: 'Bank Sampah Asri Jaya',
    implementationDate: '2024-10-08',
    startTime: '08:30',
    endTime: '10:30',
    imageUrl: 'bank_sampah_4s.jpeg',
  ),
  Schedule(
    coverageArea: 'Pakuncen dan sekitarnya',
    wasteBankName: 'Bank Sampah Lestari Mandiri',
    implementationDate: '2024-10-09',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'bank_sampah_sewulan.png',
  ),
  Schedule(
    coverageArea: 'Wirobrajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Sejahtera Abadi',
    implementationDate: '2024-10-10',
    startTime: '07:00',
    endTime: '09:00',
    imageUrl: 'bank_sampah_pakem.png',
  ),
  Schedule(
    coverageArea: 'Notoprajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Berkah',
    implementationDate: '2024-10-11',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'bank_sampah_4s.jpeg',
  ),
];
