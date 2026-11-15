import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';

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

            home: MainPage(
                ubahTema: ubahTema,
                isDarkMode: _themeMode == ThemeMode.dark,
            ),
        );
    }
}

class MainPage extends StatefulWidget {
    final Function(bool) ubahTema;
    final bool isDarkMode;

    const MainPage({
        super.key,
        required this.ubahTema,
        required this.isDarkMode,
    });

    @override
    State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

    int _selectedIndex = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: IndexedStack(
                index: _selectedIndex,
                children: [
                    ProfilePage(
                        ubahTema: widget.ubahTema,
                        isDarkMode: widget.isDarkMode,
                    ),
                    const AboutPage(),
                ],
            ),

            bottomNavigationBar: NavigationBar(
                selectedIndex: _selectedIndex,

                onDestinationSelected: (index) {
                    setState(() {
                        _selectedIndex = index;
                    });
                },

                destinations: const [
                    NavigationDestination(
                        icon: Icon(Icons.person_outline),
                        selectedIcon: Icon(Icons.person),
                        label: 'Profil',
                    ),

                    NavigationDestination(
                        icon: Icon(Icons.info_outline),
                        selectedIcon: Icon(Icons.info),
                        label: 'About',
                    ),
                ],
            ),
        );
    }
}