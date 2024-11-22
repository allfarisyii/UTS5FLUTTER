import 'package:flutter/material.dart';
import 'profil.dart';
import 'transaksi.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: SizedBox.shrink(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/image/profil.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat datang',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Muhammad Al farisyi',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Kolom Saldo
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.wallet, size: 50, color: Colors.green), // Ikon dompet di pojok kiri
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saldo',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp 10.500.000', // Ganti dengan saldo aktual
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nomor Rekening',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '1234567899', // Ganti dengan nomor rekening aktual
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Akses Cepat
            Text(
              'Akses Cepat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Kolom Transfer
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TransaksiPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(Icons.account_balance_wallet_rounded, size: 40, color: Colors.green), // Ikon transfer
                          SizedBox(height: 5),
                          Text('Transfer', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
                // Kolom Aktivitas
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Aksi ketika aktivitas ditekan
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(Icons.local_activity, size: 40, color: Colors.green), // Ikon aktivitas umum
                          SizedBox(height: 5),
                          Text('Aktivitas', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
                // Kolom Akun Bank
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Aksi ketika akun bank ditekan
                    },
                    child: Container(
                      color: Colors.grey[300], // Warna abu-abu
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(Icons.account_balance, size: 40, color: Colors.green), // Ikon akun bank
                          SizedBox(height: 5),
                          Text('Akun Bank', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Bagian Transaksi
            Text(
              'Transaksi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                TransactionItem(name: 'Achmad Zamroni', amount: 200000, type: 'Uang Masuk'),
                TransactionItem(name: 'Fandi Ahmad', amount: 150000, type: 'Uang Masuk'),
                TransactionItem(name: 'Mochamad Imamudin', amount: 30000, type: 'Uang Masuk'),
                TransactionItem(name: 'Tajudin Hasani', amount: 100000, type: 'Uang Masuk'),
                TransactionItem(name: 'Barani Nur Said', amount: 250000, type: 'Uang Masuk'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class TransactionItem extends StatelessWidget {
  final String name;
  final double amount;
  final String type;

  TransactionItem({required this.name, required this.amount, required this.type});

  @override
  Widget build(BuildContext context) {
    // Format amount menggunakan NumberFormat
    final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    String formattedAmount = formatter.format(amount);

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.attach_money, size: 40, color: Colors.green), // Ikon uang masuk
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Nama penerima tebal
                Text(type, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(formattedAmount, style: TextStyle(fontSize: 16)), // Nominal transfer yang diformat
        ],
      ),
    );
  }
}