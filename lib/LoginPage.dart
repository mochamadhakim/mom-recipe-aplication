import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resepmakanan/MainPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String info = "";

  FirebaseAuth auth = FirebaseAuth.instance;

  // void doLogout() {
  //   signOut().then((value) {
  //     setState(() {
  //       info = "Log outed";
  //     });
  //   }).catchError((e) => print(e.toString()));
  // }

  void doLogin() {
    _signIn().then((User user) {
      setState(() {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
          (Route<dynamic> route) => false,
        );
        print(user.displayName.toString());
      });
    }).catchError((e) => print(e.toString()));
  }

  // Future<void> signOut() async {
  //   await auth.signOut();
  // }

  Future<User> _signIn() async {
    GoogleSignInAccount gsia = await GoogleSignIn().signIn();
    GoogleSignInAuthentication gSA = await gsia.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      idToken: gSA.idToken,
      accessToken: gSA.accessToken,
    );

    User user =
        (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 16),
                  child: Text(
                    "Daftar Resep Makanan",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  "Menyediakan Segala Resep\nMasakan Rumahan",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.4)),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 250,
                  height: 45,
                  margin: EdgeInsets.only(top: 75, bottom: 20),
                  child: RaisedButton(
                      child: Text(
                        "Masuk",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Colors.orange,
                      onPressed: () {
                        doLogin();
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
