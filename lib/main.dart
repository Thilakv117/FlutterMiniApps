import 'package:flutter/material.dart';
import 'package:loginpage/sign_in_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body:const BodyPage(),
      ),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://static.wikia.nocookie.net/logo-timeline/images/c/cf/4B4A9751-D2BF-4A93-BDCC-CDCA5326B65F.png/revision/latest?cb=20210426191500'),
       const SizedBox(height: 10),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
        ),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'PassWord',
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const Text(
                'Forget PassWord',
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (BuildContext context){
                   return SignInPage();
                 }
                 ),
                 );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize:const Size(200, 30),
                ),
                child: const Text('Login'),
              ),
           const SizedBox(height: 23),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize:const Size(200, 10),
                ),
                child: const Text('New User? Create Account'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
