import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3D2E),
        title: Text("Send Money", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Kahan bhejna hai?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          _item(Icons.account_balance_wallet, "ScorePay", "ScorePay account par bhejen"),
          _item(Icons.account_balance, "Bank", "Kisi bhi bank account mein"),
          _item(Icons.wallet, "Wallet", "JazzCash, NayaPay waghera"),
          _item(Icons.bolt, "Raast", "Raast ID par bhejen"),
          _item(Icons.person, "CNIC", "CNIC par bhejen"),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String title, String sub) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFE8F5E9),
          child: Icon(icon, color: Color(0xFF0B3D2E)),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(sub),
        trailing: Icon(Icons.arrow_forward_ios, size: 14),
        onTap: () {},
      ),
    );
  }
}
