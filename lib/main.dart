import 'package:flutter/material.dart';
import 'send_money.dart';

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
        backgroundColor: Color(0xFF0B3D2E),
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
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SendMoneyScreen()));
                          },
                          child: Text("Send Money"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Bill Payment"))),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(context, Icons.send, "Send Money"),
                _button(context, Icons.receipt, "Bill Pay"),
                _button(context, Icons.phone_android, "Easyload"),
                _button(context, Icons.history, "History"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(context, Icons.account_balance, "Bank"),
                _button(context, Icons.wallet, "Wallet"),
                _button(context, Icons.bolt, "Raast"),
                _button(context, Icons.person, "CNIC"),
              ],
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

  Widget _button(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        if (label == "Send Money") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SendMoneyScreen()));
        }
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFFE8F5E9),
            child: Icon(icon, color: Color(0xFF0B3D2E)),
          ),
          SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
