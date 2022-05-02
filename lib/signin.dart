import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Image.asset('asset/image/bubbles.png',
                  width: 200, height: 150, fit: BoxFit.fill),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 35, right: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text('Email',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: new InputDecoration(
                      //hintText:'Enter Your Email',
                      // hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white),
                      //),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Password',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: _isObscure,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white),
                      // ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: SizedBox(
                      width: 200,
                      height: 45,
                      child: FlatButton(
                        child: Text('Log in',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.purple[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () async {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .signInWithEmailAndPassword(
                                    email: email, password: password);
                            Navigator.pushNamed(context, '/address');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                              final snackBar =
                                  SnackBar(content: Text('No user found.'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                              final snackBar =
                                  SnackBar(content: Text('Wrong Password!!'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Don't have an\naccount?",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 100,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Up');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          color: Colors.purple[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
