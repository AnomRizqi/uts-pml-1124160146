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

                    const ListTile(
                        leading: Icon(Icons.sports_esports),
                        title: Text('Gaming'),
                        subtitle: Text('Bermain game di waktu luang'),
                    ),

                    const ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Programming'),
                        subtitle: Text('Membuat aplikasi dan website'),
                    ),

                    const ListTile(
                        leading: Icon(Icons.design_services),
                        title: Text('UI/UX Design'),
                        subtitle: Text('Mendesain tampilan aplikasi'),

                    ),

                    const SizedBox(height: 20),

                    const Text(
                        'Riwayat Pendidikan',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                    ),

                    const ListTile(
                        leading: Icon(Icons.school),
                        title: Text('Global Institute'),
                        subtitle: Text('Teknik Informatika'),
                    ),
                ],
            ),
        );
    }
}