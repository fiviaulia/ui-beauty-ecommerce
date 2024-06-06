import 'package:flutter/material.dart';
import 'package:urfioley/pages/RegisterPage.dart'; // Import halaman register

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 255, 143, 221),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Silakan masuk ke akun Anda.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Form login dengan email dan password
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email), // Ikon email
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock), // Ikon password
                    ),
                    obscureText: true, // Untuk menyembunyikan teks
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk melakukan login
                // Anda dapat menambahkannya di sini
                Navigator.of(context).pushReplacementNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 143, 221),
              ),
              child: Text("Login"),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman register jika belum memiliki akun
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text("Belum memiliki akun? Daftar disini."),
            ),
          ],
        ),
      ),
    );
  }
}
