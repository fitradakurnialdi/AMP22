import 'package:flutter/material.dart';
import 'dasboard.dart';
// import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroPage (),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Assrofi's App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30),),
              SizedBox(height: 11,),
              Text(
                'ready to lead and ready to be lead',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,),
              SizedBox(height: 65),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'UrFavBoys',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                      ),
                    ),
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold,),),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'UrFavBoys',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Remember me', style: TextStyle(
                        fontSize: 12
                      ),),
                    ],
                  ),
                  Text('Forgot Password?', style: TextStyle(
                        fontSize: 12
                      ),),
                ],
              ),
              SizedBox(height: 32,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DasPage(),
                    )
                    );
                  },
                  child: Text('LOGIN'),
                  ),
                ),
              SizedBox(height: 32,),
              // Container(
              //   width: double.infinity,
              //   height: 50,
              //   margin: EdgeInsets.symmetric(horizontal: 20),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.login),
              //         SizedBox(width: 12),
              //         Text('SIGN WITH GOOGLE'),
              //       ],
              //     ),),),
                  SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You not have an account yet?"),
                  SizedBox(width: 5),
                  Text("Sign up", style: TextStyle(color: Colors.yellow)),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}