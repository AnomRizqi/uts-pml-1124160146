
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
    const AboutPage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Tentang Saya'),
                centerTitle: true,
            ),

            body: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                    const Text(
                        'Hobi dan Keahlian',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                    ),

                    const SizedBox(height: 10),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                            children: [
                                ListTile(
                                    leading: Icon(Icons.sports_esports),
                                    title: Text('Gaming'),
                                    subtitle: Text('Bermain game di waktu luang'),
                                ),

                                ListTile(
                                    leading: Icon(Icons.code),
                                    title: Text('Programming'),
                                    subtitle: Text('Membuat aplikasi dan website'),
                                ),

                                ListTile(
                                    leading: Icon(Icons.design_services),
                                    title: Text('UI/UX Design'),
                                    subtitle: Text('Mendesain tampilan aplikasi'),
                                ),
                            ],
                        ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                        'Riwayat Pendidikan',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                    ),

                    const SizedBox(height: 10),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                            children: [
                                ListTile(
                                    leading: Icon(Icons.school),
                                    title: Text('Global Institute'),
                                    subtitle: Text('Teknik Informatika'),
                                ),

                                Divider(height: 1),

                                ListTile(
                                    leading: Icon(Icons.school),
                                    title: Text('SMKS Binong Permai'),
                                    subtitle: Text('Sekolah Menengah Kejuruan'),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}
