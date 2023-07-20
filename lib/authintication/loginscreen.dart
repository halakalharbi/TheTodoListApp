import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MaterialColor color = Colors.blueGrey;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  double height = 0;
  double width = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        height = 440;
        width = 340;
      });
    });
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        height = 450;
        width = 350;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/plant_background.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: height,
              width: width,
              child: Container(
                height: 450,
                width: 350,
                child: height != 450
                    ? null
                    : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Center(
                        child: Text(
                          "Welcome again,",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF90A955),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                          label: const Text("Email"),
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: password,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String _email = email.text.toString();
                          String _password = password.text.toString();
                          if (_email.isNotEmpty && _password.isNotEmpty) {
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print("Error");
                          }
                          print("Email is: ${email.text.toString()}");
                          print("Password is: ${password.text.toString()}");
                          print("Done successfully");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF90A955)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(double.infinity, 50), // Adjust the width (double.infinity) and height (50) as needed
                          ),
                        ),
                        child: const Text("Sign in"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: Color(0xFF90A955),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "Sign up",
                                style: TextStyle(
                                  decoration: TextDecoration.underline, // Add underline to the "Sign up" text
                                  color: Color(0xFF90A955),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
