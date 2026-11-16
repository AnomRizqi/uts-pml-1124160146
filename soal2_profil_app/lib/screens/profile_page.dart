import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'about_page.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
    final Function(bool) ubahTema;
    final bool isDarkMode;

    const ProfilePage({
        super.key,
        required this.ubahTema,
        required this.isDarkMode,
    });

    final Profile profile = const Profile(
        nama: 'Anom Rizqi',
        nim: '1124160146',
        prodi: 'Teknik Informatika',
        kelas: 'TI SE1',
        bio: 'Mahasiswa Teknik Informatika yang tertarik dengan pengembangan aplikasi dan teknologi.',
        email: '1124160146@global.ac.id',
        hp: '081234567890',
        github: 'github.com/AnomRizqi',
    );

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Profil Mahasiswa'),
                centerTitle: true,
            ),

            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                        UserAccountsDrawerHeader(
                            decoration: const BoxDecoration(
                                color: Colors.indigo,
                            ),
                            accountName: Text(profile.nama),
                            accountEmail: Text(profile.nim),
                            currentAccountPicture: const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile.jpg',
                                ),
                            ),
                        ),
                        ListTile(
                            leading: const Icon(Icons.person),
                            title: const Text('Profil'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),

                        ListTile(
                            leading: const Icon(Icons.edit),
                            title: const Text('Edit Profil'),
                            onTap: () {
                                Navigator.pop(context);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) {
                                            return EditProfilePage(
                                                profile: profile,
                                            );
                                        },
                                    ),
                                );
                            },
                        ),

                        ListTile(
                            leading: const Icon(Icons.info_outline),
                            title: const Text('Tentang Saya'),
                            onTap: () {
                                Navigator.pop(context);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) {
                                            return const AboutPage();
                                        },
                                    ),
                                );
                            },
                        ),

                        const Divider(),

                        SwitchListTile(
                            secondary: const Icon(Icons.dark_mode),
                            title: const Text('Mode Gelap'),
                            value: isDarkMode,
                            onChanged: (value) {
                                ubahTema(value);
                            },
                        ),
                        ListTile(
                            leading: const Icon(Icons.logout, color: Colors.red),
                            title: const Text('Keluar'),
                            onTap: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/',
                                    (route) => false,
                                );
                            },
                        ),
                    ],
                ),
            ),

            body: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        const SizedBox(height: 16),

                        const CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage(
                              'assets/images/profile.jpg',
                          ),
                      ),

                        const SizedBox(height: 20),

                        Text(
                            profile.nama,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                            ),
                        ),

                        const SizedBox(height: 8),

                        Text(profile.nim),

                        const SizedBox(height: 8),

                        Text(profile.prodi),
                        Text('Kelas ${profile.kelas}'),

                        const SizedBox(height: 24),

                        Card(
                            child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        const Row(
                                            children: [
                                                Icon(Icons.person_outline),
                                                SizedBox(width: 8),
                                                Text(
                                                    'Tentang Saya',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),

                                        const SizedBox(height: 12),

                                        Text(
                                            profile.bio,
                                            textAlign: TextAlign.justify,
                                        ),
                                    ],
                                ),
                            ),
                        ),

                        const SizedBox(height: 16),

                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                'Informasi Kontak',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                        ),

                        const SizedBox(height: 8),

                        Card(
                            child: Column(
                                children: [
                                    ListTile(
                                        leading: const Icon(Icons.email),
                                        title: const Text('Email'),
                                        subtitle: Text(profile.email),
                                    ),

                                    const Divider(height: 1),

                                    ListTile(
                                        leading: const Icon(Icons.phone),
                                        title: const Text('Nomor HP'),
                                        subtitle: Text(profile.hp),
                                    ),

                                    const Divider(height: 1),

                                    ListTile(
                                        leading: const Icon(Icons.code),
                                        title: const Text('GitHub'),
                                        subtitle: Text(profile.github),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),

            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) {
                                return EditProfilePage(
                                    profile: profile,
                                );
                            },
                        ),
                    );
                },
                tooltip: 'Edit Profil',
                child: const Icon(Icons.edit),
            ),
        );
    }
}

