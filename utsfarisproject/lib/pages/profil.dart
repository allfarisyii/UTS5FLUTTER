import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto Profil
              Center(
                child: CircleAvatar(
                  radius: 50, // Ukuran foto profil
                  backgroundImage: AssetImage('assets/image/profil.jpg'), // Ganti dengan URL foto profil
                ),
              ),
              SizedBox(height: 20),

              // Deskripsi Nama Nasabah
              Text(
                'Nama Nasabah',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              _buildProfileField('Muhammad Al farisyi'),

              SizedBox(height: 20),

              // Deskripsi Jenis Kelamin
              Text(
                'Jenis Kelamin',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              _buildProfileField('Laki-laki'),

              SizedBox(height: 20),

              // Deskripsi Alamat
              Text(
                'Alamat',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              _buildProfileField('Bulurejo Diwek Jombang'),

              SizedBox(height: 20),

              // Tombol Simpan
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk menyimpan perubahan
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Perubahan disimpan!')),
                    );
                  },
                  child: Text('Simpan'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    backgroundColor: Colors.green, // Latar belakang hijau
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membangun kolom profil
  Widget _buildProfileField(String value) {
    return Container(
      padding: EdgeInsets.all(15), // Menambah padding untuk kolom
      width: double.infinity, // Memperpanjang kolom agar memenuhi lebar
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
      ),
    );
  }
}