import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
    const ProfilePage({super.key});

    @override
    State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

    Profile profile = Profile(
        nama: 'Anom Rizqi',
        nim: '1124160146',
        prodi: 'Teknik Informatika',
        kelas: 'TI SE1',
        bio: 'Mahasiswa Teknik Informatika yang tertarik dengan pengembangan aplikasi dan teknologi.',
        email: 'anomriz@gmail.com',
        hp: '081234567890',
        github: 'github.com/AnomRizqi',
    );

    void editProfil() async {
        final hasil = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) {
                    return EditProfilePage(profile: profile);
                },
            ),
        );

        if (hasil != null) {
            setState(() {
                profile = hasil;
            });
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Profil Mahasiswa'),
                centerTitle: true,
                actions: [
                    IconButton(
                        onPressed: editProfil,
                        icon: const Icon(Icons.edit),
                        tooltip: 'Edit Profil',
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
                                    profile.nama,
                                    style: Theme.of(context).textTheme.headlineSmall,
                                ),

                                const SizedBox(height: 5),

                                Text(
                                    profile.nim,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                Text(
                                    profile.prodi,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                Text(
                                    profile.kelas,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                const SizedBox(height: 10),

                                Text(
                                    profile.bio,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                const SizedBox(height: 15),

                                Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                        children: [
                                            const InfoTile(
                                                icon: Icons.sports_esports,
                                                label: 'Hobi',
                                                value: 'Gaming',
                                            ),

                                            const InfoTile(
                                                icon: Icons.code,
                                                label: 'Keahlian',
                                                value: 'Programming',
                                            ),

                                            const InfoTile(
                                                icon: Icons.design_services,
                                                label: 'Keahlian',
                                                value: 'UI/UX Design',
                                            ),
                                        ],
                                    ),
                                ),

                                const SizedBox(height: 15),

                                Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                        children: [
                                            const ListTile(
                                                title: Text(
                                                    'Informasi Kontak',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ),

                                            InfoTile(
                                                icon: Icons.email,
                                                label: 'Email',
                                                value: profile.email,
                                            ),

                                            InfoTile(
                                                icon: Icons.phone,
                                                label: 'Nomor HP',
                                                value: profile.hp,
                                            ),

                                            InfoTile(
                                                icon: Icons.code,
                                                label: 'GitHub',
                                                value: profile.github,
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}

class InfoTile extends StatelessWidget {
    const InfoTile({
        super.key,
        required this.icon,
        required this.label,
        required this.value,
    });

    final IconData icon;
    final String label;
    final String value;

    @override
    Widget build(BuildContext context) {
        return ListTile(
            leading: Icon(icon),
            title: Text(label),
            subtitle: Text(value),
        );
    }
}