import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
    const ProfilePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Profil Mahasiswa'),
                centerTitle: true,
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        tooltip: 'Pengaturan',
                    ),
                ],
            ),

            body: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                            children: [
                                const CircleAvatar(
                                    radius: 55,
                                    child: Icon(
                                        Icons.person,
                                        size: 40,
                                    ),
                                ),

                                const SizedBox(height: 20),

                                Text(
                                    'Anom Rizqi',
                                    style: Theme.of(context).textTheme.headlineSmall,
                                ),

                                const SizedBox(height: 5),

                                Text(
                                    '1124160146',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                Text(
                                    'Teknik Informatika',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                const SizedBox(height: 10),

                                Text(
                                    'Mahasiswa Teknik Informatika yang tertarik dengan pengembangan aplikasi dan teknologi.',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Card(
                                  elevation: 2,
                                  shape: RoundedSuperellipseBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  child: Column(
                                    children: [
                                      
                                    ],
                                  ),
                                )
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}