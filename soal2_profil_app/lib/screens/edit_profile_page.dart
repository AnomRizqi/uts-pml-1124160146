import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
    final Profile profile;

    const EditProfilePage({
        super.key,
        required this.profile,
    });

    @override
    State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

    final formKey = GlobalKey<FormState>();

    late TextEditingController namaController;
    late TextEditingController emailController;
    late TextEditingController hpController;
    late TextEditingController bioController;

    @override
    void initState() {
        super.initState();

        namaController = TextEditingController(text: widget.profile.nama);
        emailController = TextEditingController(text: widget.profile.email);
        hpController = TextEditingController(text: widget.profile.hp);
        bioController = TextEditingController(text: widget.profile.bio);
    }

    @override
    void dispose() {
        namaController.dispose();
        emailController.dispose();
        hpController.dispose();
        bioController.dispose();

        super.dispose();
    }

    void simpanProfil() {
        if (formKey.currentState!.validate()) {

            Profile dataBaru = Profile(
                nama: namaController.text,
                nim: widget.profile.nim,
                prodi: widget.profile.prodi,
                kelas: widget.profile.kelas,
                bio: bioController.text,
                email: emailController.text,
                hp: hpController.text,
                github: widget.profile.github,
            );

            Navigator.pop(context, dataBaru);
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Edit Profil'),
            ),

            body: Padding(
                padding: const EdgeInsets.all(20),

                child: Form(
                    key: formKey,

                    child: ListView(
                        children: [

                            TextFormField(
                                controller: namaController,
                                decoration: const InputDecoration(
                                    labelText: 'Nama',
                                    border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Nama harus diisi';
                                    }
                                    return null;
                                },
                            ),

                            const SizedBox(height: 15),

                            TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                    if (value == null ||
                                        !RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
                                        return 'Email tidak valid';
                                    }
                                    return null;
                                },
                            ),

                            const SizedBox(height: 15),

                            TextFormField(
                                controller: hpController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    labelText: 'Nomor HP',
                                    border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                    if (value == null ||
                                        !RegExp(r'^[0-9]{10,13}$').hasMatch(value)) {
                                        return 'Nomor HP harus 10-13 angka';
                                    }
                                    return null;
                                },
                            ),

                            const SizedBox(height: 15),

                            TextFormField(
                                controller: bioController,
                                maxLines: 3,
                                decoration: const InputDecoration(
                                    labelText: 'Bio',
                                    border: OutlineInputBorder(),
                                ),
                            ),

                            const SizedBox(height: 20),

                            ElevatedButton(
                                onPressed: simpanProfil,
                                child: const Text('Simpan'),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}