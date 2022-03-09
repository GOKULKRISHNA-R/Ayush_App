import 'package:flutter/material.dart';
import '../../services/auth.dart';
import 'Map.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],

      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: const Text(
          'Maps',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(

            onPressed: () async {
              await _auth.signOut();
            },

            icon: const Icon(
              Icons.person,
              color: Colors.black87,
            ),

            label: const Text(
              'Log Out',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          )
        ],
      ),

      body: const MapPage() ,

    );

  }
}
