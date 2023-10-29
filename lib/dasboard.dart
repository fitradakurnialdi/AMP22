import 'package:flutter/material.dart';

import 'prfl.dart';
// import 'profil.dart';
// import 'package:qwerty/profil.dart';

class DasPage extends StatefulWidget {
  const DasPage({super.key});

  @override
  State<DasPage> createState() => _DasPageState();
}

class _DasPageState extends State<DasPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.grey,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),
                    )
                    );
          }, icon: Icon(Icons.account_balance_sharp))],
        ),
        body: 
        // Container(
          
        //   height: 350,
        //   child: ListView(
        //     scrollDirection: Axis.vertical,
        //     children: [
        
        //       // 1st box
        //       Container(
        //         height: 150,
        //         color: Colors.grey[700],
        //       ),
        //       SizedBox(height: 12),
        //       // 2nd box
        //       Container(
        //         height: 150,
        //         color: Colors.grey[500],
        //       ),
        
        //       // 3rd box
        //       Container(
        //         height: 150,
        //         color: Colors.grey[300],
        //       ),
        
        //     ],
        //   ),
        // ),
        GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(25),
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              // onTap: () {
              //   // Navigator.push(context,
              //   //     MaterialPageRoute(builder: (context) => ProfileScreen()));
              // },
              // splashColor: Colors.deepPurple,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: NetworkImage('https://img.freepik.com/free-photo/view-3d-car_23-2150796894.jpg?t=st=1698541969~exp=1698545569~hmac=dd95c0e2709de078e20f8f171de537596e9d3584e17685a87d72d18259a928be&w=740'),width: 350,),
                    // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("item", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              // onTap: () {
              //   // Navigator.push(context,
              //   //     MaterialPageRoute(builder: (context) => ProfileScreen()));
              // },
              // splashColor: Colors.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: NetworkImage('https://img.freepik.com/free-photo/view-3d-car_23-2150796894.jpg?t=st=1698541969~exp=1698545569~hmac=dd95c0e2709de078e20f8f171de537596e9d3584e17685a87d72d18259a928be&w=740'),width: 350,),
                    // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("item", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              // onTap: () {
              //   // Navigator.push(context,
              //   //     MaterialPageRoute(builder: (context) => ProfileScreen()));
              // },
              // splashColor: Colors.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: NetworkImage('https://img.freepik.com/free-photo/view-3d-car_23-2150796894.jpg?t=st=1698541969~exp=1698545569~hmac=dd95c0e2709de078e20f8f171de537596e9d3584e17685a87d72d18259a928be&w=740'),width: 350,),
                    // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("item", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              // onTap: () {
              //   // Navigator.push(context,
              //   //     MaterialPageRoute(builder: (context) => ProfileScreen()));
              // },
              // splashColor: Colors.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: NetworkImage('https://img.freepik.com/free-photo/view-3d-car_23-2150796894.jpg?t=st=1698541969~exp=1698545569~hmac=dd95c0e2709de078e20f8f171de537596e9d3584e17685a87d72d18259a928be&w=740'),width: 350,),
                    // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("item", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
              
            ),
          ),
        ],
      ),
      ),
    );
  }
}