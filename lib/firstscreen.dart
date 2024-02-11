import 'dart:ui';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/main.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "RINGS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "EARRINGS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "NECKLACE",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "BRACELETS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(width: 3, color: Colors.black),
                      elevation: 30,
                      shadowColor: Colors.black,
                      padding: const EdgeInsets.all(20),
                      // minimumSize: Size(150),
                      textStyle: const TextStyle(fontSize: 30),
                      // primary: Colors.white,
                      backgroundColor: Color.fromARGB(255, 247, 188, 163),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstScreen()),
                      );
                    },
                    child: const Text('Shop Now'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 188, 163),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  "WELCOME!!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "Sign in with your email and password \nor \nContinue with Facebook",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Signform(),
            ],
          ),
        ),
      ),
    );
  }
}

class Signform extends StatefulWidget {
  const Signform({super.key});

  @override
  State<Signform> createState() => _SignformState();
}

class _SignformState extends State<Signform> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: username,
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Enter your name",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 25,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(38),
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 25,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(38),
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 70),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: BorderSide(width: 3, color: Colors.black),
              elevation: 30,
              shadowColor: Colors.black,
              padding: const EdgeInsets.all(20),
              // minimumSize: Size(150),
              textStyle: const TextStyle(fontSize: 30),
              // primary: Colors.white,
              backgroundColor: Color.fromARGB(255, 247, 188, 163),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(name: username.text),
                ),
              );
            },
            child: const Text('Log In'),
          ),
        ],
      ),
    );
  }
}

class Login extends StatelessWidget {
  final String name;

  const Login({Key? key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          Container(
        width: double.maxFinite,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/shop.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME, ${name}",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 120,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  side: BorderSide(width: 3, color: Colors.black),
                  elevation: 30,
                  shadowColor: Colors.black,
                  padding: const EdgeInsets.all(20),
                  // minimumSize: Size(150),
                  textStyle: const TextStyle(fontSize: 30),
                  // primary: Colors.white,
                  backgroundColor: Color.fromARGB(255, 247, 188, 163),
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourthScreen(),
                    ),
                  );
                },
                child: const Text('GET started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 234, 234),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.sort,
                  size: 50,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Therapy",
                    style: TextStyle(
                      // fontfamily
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 208, 208),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 188, 163),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here...",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        "Best Sale Product",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 200",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ring.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 300",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ear.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 600",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/neckkk.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 800",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/download.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 900",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/nn.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "RS 400",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/handd.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
