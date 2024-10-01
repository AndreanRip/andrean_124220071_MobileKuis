import 'package:flutter/material.dart';
import 'Home/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  String _password = '';
  bool isClicked = false;
  bool _passwordVisible = false;

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage(username: _username)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  _logo(),
                  _selamatDatang(),
                  _illustration(),
                  _usernameField(),
                  _passwordField(),
                ],
              ),
            ),
            _LoginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Image.asset(
        'assets/logo.png',
        height: 75,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _selamatDatang() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Selamat Datang Kembali",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _illustration() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Image.asset(
        'assets/illustration.png',
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _usernameField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          _username = value;
        },
        decoration: InputDecoration(
          hintText: "Nama username",
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.purple[300],
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          _password = value;
        },
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.purple[300],
        ),
      ),
    );
  }

  Widget _LoginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isClicked == true
              ? WidgetStateProperty.all(Colors.white)
              : WidgetStateProperty.all(Colors.purple),
          foregroundColor: isClicked == true
              ? WidgetStateProperty.all(Colors.purple)
              : WidgetStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (_username == "123" && _password == "123") {
            _navigateToHome();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Login Berhasil"),
              ),
            );
            setState(() {
              isClicked = !isClicked;
              print(isClicked);
            });
          }
        },
        child: Text("Masuk"),
      ),
    );
  }
}
