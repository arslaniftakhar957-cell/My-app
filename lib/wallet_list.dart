import 'package:flutter/material.dart';

class WalletListScreen extends StatelessWidget {
  final List<Map<String, String>> wallets = [
    {"name": "JazzCash", "sub": "Jazz Wallet"},
    {"name": "Easypaisa", "sub": "Telenor Wallet"},
    {"name": "NayaPay", "sub": "Digital Wallet"},
    {"name": "SadaPay", "sub": "Digital Wallet"},
    {"name": "UPaisa", "sub": "Ufone Wallet"},
    {"name": "Zindigi", "sub": "JS Wallet"},
    {"name": "HBL Konnect", "sub": "HBL Wallet"},
    {"name": "MobiCash", "sub": "Jazz Wallet"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3D2E),
        title: Text("Select Wallet", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Wallet...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: wallets.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFFE8F5E9),
                      child: Text(wallets[index]["name"]![0], style: TextStyle(color: Color(0xFF0B3D2E), fontWeight: FontWeight.bold)),
                    ),
                    title: Text(wallets[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(wallets[index]["sub"]!),
                    trailing: Icon(Icons.arrow_forward_ios, size: 14),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
