import 'package:flutter/material.dart';

// import 'main.dart';
import 'prfl.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.grey,
        title: Text('MyProfil'), 
      ), 
      body: Container(
        child: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[ 
              const Text( 
                'Ini adalah Halaman Ketiga', 
                style: TextStyle(fontSize: 20), 
              ), 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),
                      )
                      ); 
                }, 
                child: Text('LogOut'), 
              ), 
            ], 
          ), 
        ),
      ), 
    );
  }
}