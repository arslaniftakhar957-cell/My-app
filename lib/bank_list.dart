import 'package:flutter/material.dart';

class BankListScreen extends StatelessWidget {
  final List<String> banks = [
    "Meezan Bank",
    "HBL - Habib Bank",
    "UBL - United Bank",
    "MCB Bank",
    "Alfalah Bank",
    "Standard Chartered",
    "Faysal Bank",
    "Askari Bank",
    "Bank Al Habib",
    "JS Bank",
    "MobiCash / JazzCash",
    "NayaPay",
    "Sadapay",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3D2E),
        title: Text("Select Bank", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Bank...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: banks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFFE8F5E9),
                    child: Text(banks[index][0], style: TextStyle(color: Color(0xFF0B3D2E), fontWeight: FontWeight.bold)),
                  ),
                  title: Text(banks[index]),
                  trailing: Icon(Icons.arrow_forward_ios, size: 14),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
