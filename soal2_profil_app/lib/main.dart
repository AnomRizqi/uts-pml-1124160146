
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
            title: 'Profil Anom',

            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.blue,
                    brightness: Brightness.light,
                ),
                useMaterial3: true,
            ),

            darkTheme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.blue,
                    brightness: Brightness.dark,
                ),
                useMaterial3: true,
            ),

            themeMode: ThemeMode.light,

            home: Scaffold(
                appBar: AppBar(
                    title: const Text('Profil Mahasiswa'),
                    centerTitle: true,
                ),
                body: const Center(
                    child: Text('Profil Anom Rizqi'),
                ),
            ),
        );
    }
}
