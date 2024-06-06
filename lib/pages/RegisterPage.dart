import 'package:flutter/material.dart';
import 'package:urfioley/pages/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Color.fromARGB(255, 255, 143, 221),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Buat akun baru.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Nama",
                      prefixIcon: Icon(Icons.person), // Icon untuk nama
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email), // Icon untuk email
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock), // Icon untuk password
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika pendaftaran sederhana
                final String name = nameController.text;
                final String email = emailController.text;
                final String password = passwordController.text;

                if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
                  // Lakukan pendaftaran pengguna di sini
                  // Misalnya, Anda dapat menggunakan Firebase Authentication
                  // atau layanan otentikasi lainnya sesuai kebutuhan Anda.

                  // Setelah pendaftaran berhasil, navigasikan pengguna ke halaman login.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 143, 221),
              ),
              child: Text("Daftar"),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman login jika sudah memiliki akun
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text("Sudah memiliki akun? Login disini."),
            ),
          ],
        ),
      ),
    );
  }
}
