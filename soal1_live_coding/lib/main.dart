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
                    centerTitle: false,
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
                    child: Padding(padding: ),
                )
                );
            }
            }