import 'package:flutter/material.dart';
import '../views/login.dart';

class ProfilePage extends StatelessWidget {
final String nama;
const ProfilePage({super.key, required this.nama});
@override
 build(BuildContext context) {
return Scaffold(

body: Center(
child: Padding(
padding: EdgeInsets.all(24.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.account_circle, size: 100, color:
Colors.green),
SizedBox(height: 20),
Text(
nama,
style: TextStyle(fontSize: 24, fontWeight:
FontWeight.bold),
),
SizedBox(height: 10),
Text('Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu'),
SizedBox(height: 10),
Icon(Icons.circle, size: 50, color:
Colors.blue),
SizedBox(height: 40),

ElevatedButton(
onPressed: () {
Navigator.pushAndRemoveUntil(
context,
MaterialPageRoute(builder: (context) =>
LoginPage()),
(route) => false,
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.red,
foregroundColor: Colors.white,
minimumSize: Size(200, 45),
),
child: Text('Logout'),
),
],
),
),
),
);
}
}