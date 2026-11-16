
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    bool sembunyikanPassword = true;

    void login() {
        if (usernameController.text == 'anom' &&
            passwordController.text == '123456') {

            Navigator.pushReplacementNamed(context, '/home');

        } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Username atau password salah'),
                ),
            );
        }
    }

    @override
    void dispose() {
        usernameController.dispose();
        passwordController.dispose();

        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.all(25),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            const Icon(
                                Icons.account_circle,
                                size: 100,
                                color: Colors.indigo,
                            ),

                            const SizedBox(height: 20),

                            const Text(
                                'Selamat Datang',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),

                            const SizedBox(height: 8),

                            const Text(
                                'Silakan login untuk masuk ke aplikasi',
                            ),

                            const SizedBox(height: 30),

                            TextField(
                                controller: usernameController,
                                decoration: const InputDecoration(
                                    labelText: 'Username',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.person),
                                ),
                            ),

                            const SizedBox(height: 15),

                            TextField(
                                controller: passwordController,
                                obscureText: sembunyikanPassword,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: const OutlineInputBorder(),
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                            setState(() {
                                                sembunyikanPassword =
                                                    !sembunyikanPassword;
                                            });
                                        },
                                        icon: Icon(
                                            sembunyikanPassword
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                        ),
                                    ),
                                ),
                            ),

                            const SizedBox(height: 25),

                            SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: login,
                                    child: const Text('Login'),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}