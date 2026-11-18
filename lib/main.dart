import 'package:flutter/material.dart';

void main() {
  runApp(ScorePayApp());
}

class ScorePayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3D2E), // Gahra Sabz - ScorePay
        title: Text("ScorePay", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Balance Card
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF0B3D2E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ScorePay Account", style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 8),
                  Text("Rs. 23,388.32", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Arslan Iftakhar - 0345XXXXXXX", style: TextStyle(color: Colors.white70, fontSize: 13)),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Send Money"))),
                      SizedBox(width: 10),
                      Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Bill Payment"))),
                    ],
                  )
                ],
              ),
            ),

            // Buttons Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(Icons.send, "Send Money"),
                _button(Icons.receipt, "Bill Pay"),
                _button(Icons.phone_android, "Easyload"),
                _button(Icons.history, "History"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(Icons.account_balance, "Bank"),
                _button(Icons.wallet, "Wallet"),
                _button(Icons.bolt, "Raast"),
                _button(Icons.person, "CNIC"),
              ],
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.local_offer, color: Color(0xFF0B3D2E)),
              title: Text("Promotions"),
              subtitle: Text("ScorePay ki nayi offers dekhen"),
              trailing: Icon(Icons.arrow_forward_ios, size: 14),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard, color: Color(0xFF0B3D2E)),
              title: Text("My Rewards"),
              subtitle: Text("Cashback aur rewards"),
              trailing: Icon(Icons.arrow_forward_ios, size: 14),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF0B3D2E),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "Pay"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget _button(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFFE8F5E9),
          child: Icon(icon, color: Color(0xFF0B3D2E)),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
