import 'package:flutter/material.dart';
import 'screens/profile_page.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatefulWidget {
    const MyApp({super.key});

    @override
    State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    ThemeMode _themeMode = ThemeMode.light;

    void ubahTema(bool value) {
        setState(() {
            _themeMode = value ? ThemeMode.dark : ThemeMode.light;
        });
    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Profil Anom',
            debugShowCheckedModeBanner: false,

            theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.indigo,
                ),
            ),

            darkTheme: ThemeData(
                useMaterial3: true,
                brightness: Brightness.dark,
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.indigo,
                    brightness: Brightness.dark,
                ),
            ),

            themeMode: _themeMode,

            home: ProfilePage(
                ubahTema: ubahTema,
                isDarkMode: _themeMode == ThemeMode.dark,
            ),
        );
    }
}