                import 'package:flutter/material.dart';

                void main(){
                    runApp(MyApp());

                }
                class MyApp extends StatelessWidget {
                const MyApp({super.key});

                @override
                Widget build(BuildContext context) {
                    return MaterialApp(
                        debugShowCheckedModeBanner: false,
                        title: 'Anom rizqi ',
                        theme: ThemeData(
                            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                            useMaterial3: false,
                        ),
                        darkTheme: ThemeData(
                            colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent)
                        ),
                        themeMode: ThemeMode.dark,
                        home: Profile(),
                    );
                }
                }
                class Profile extends StatelessWidget {
                const Profile({super.key});
                
                @override
                Widget build(BuildContext context) {
                    return Scaffold(
                    appBar: AppBar(
                        backgroundColor: Colors.brown,
                        title: const Text('Profil mahasiswa'),
                        centerTitle: true,
                        actions: [
                            IconButton(onPressed:(){
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('cari')),);
                            },
                            tooltip: 'search',
                            icon: Icon(Icons.search),
                            )
                        ],
                    ),
                    body: SingleChildScrollView(
                        child: Padding(padding: EdgeInsets.all(25),
                        child: Center(
                            child: Column(
                                children: [
                                    CircleAvatar(
                                        radius: 50,
                                        child: Icon(Icons.person,size: 25,),

                                    ),
                                    SizedBox(height: 25,),
                                    Text('Anom Rizqi', 
                                    style: Theme.of(context).textTheme.headlineSmall,
                                    ),
                                    Text('1124160146',style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                    Text('Teknik informatika',style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                    Card(
                                        child: Column(
                                            children: [
                                                const InfoTile(
                                                icon: Icons.email,
                                                label: 'Email',
                                                value: 'anomriz@gmail.com',
                                        ),
                                                const InfoTile(
                                                icon: Icons.phone,
                                                label: 'Nomer hp',
                                                value: '088998989345',
                                                ),
                                                const InfoTile(
                                                icon: Icons.home,
                                                label: 'Kelas',
                                                value: 'TI SE1',
                                                ),
                                                const InfoTile(
                                                icon: Icons.code,
                                                label: 'Github',
                                                value: 'github/anom',
                                                )
                                            ],
                                        ),
                                    ),
                                    Card(
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
                                    
                                ],
                            ),
                        ),
                        ),
                    ),
                                                floatingActionButton: FloatingActionButton(
                            onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Terima kasih telah melihat profil saya'),
                                ),
                                );
                            },
                            child: const Icon(Icons.add),
                            tooltip: 'add',
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