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
                    child: Padding(padding: EdgeInsetsGeometry.all(25),
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

                            ],
                        ),
                    ),
                    ),
                ),
                floatingActionButton: FloatingActionButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('tambah'))
                    );
                    
                },
                child: Icon(Icons.add),
                tooltip: 'add',
                
                ),
                );
            }
            }