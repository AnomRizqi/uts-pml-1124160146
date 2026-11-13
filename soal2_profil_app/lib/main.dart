import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';

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
            home: const MainPage(),
        );
    }
}

class MainPage extends StatefulWidget {
    const MainPage({super.key});

    @override
    State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

    int selectedIndex = 0;

    final List<Widget> pages = [
        const ProfilePage(),
        const AboutPage(),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: pages[selectedIndex],

            bottomNavigationBar: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                    setState(() {
                        selectedIndex = index;
                    });
                },
                items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profil',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.info),
                        label: 'Tentang Saya',
                    ),
                ],
            ),
        );
    }
}