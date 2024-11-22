import 'package:flutter/material.dart';
import 'package:utsfarisproject/pages/dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05), // Jarak atas
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wallet, size: 64, color: Colors.green),
                  // Ikon dompet
                  SizedBox(height: 8),
                  // Jarak antara ikon dan teks
                  Text(
                    'Dompet ku',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Muhammad Al farisyi - 4122012',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  fillColor: Colors.green[100], // Warna latar belakang
                  filled: true, // Mengaktifkan pengisian
                  prefixIcon: Icon(Icons.people, color: Colors.green), // Ikon warna hijau
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  fillColor: Colors.green[100], // Warna latar belakang
                  filled: true, // Mengaktifkan pengisian
                  prefixIcon: Icon(Icons.lock, color: Colors.green), // Ikon warna hijau
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.green, // Ikon mata warna hijau
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                child: Text('Login', style: TextStyle(color: Colors.green)),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: Colors.green),
                  textStyle: TextStyle(fontSize: 18, color: Colors.green),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Atau login dengan:'),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Logika untuk login dengan Apple ID
                      },
                      icon: Icon(Icons.apple, color: Colors.white),
                      label: Text(' Apple ID', style: TextStyle(color: Colors.white)),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.green,
                        textStyle: TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Logika untuk login dengan Google
                      },
                      icon: Icon(Icons.email, color: Colors.green),
                      label: Text(' Google', style: TextStyle(color: Colors.green)),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: Colors.green),
                        textStyle: TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.05), // Jarak bawah
            ],
          ),
        ),
      ),
    );
  }
}