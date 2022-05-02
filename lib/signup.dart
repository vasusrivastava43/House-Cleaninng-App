import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Image.asset('asset/image/cleaning-service.png',
                    width: 200, height: 150, fit: BoxFit.fill),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    )),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
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
                    Text('Last Name',
                        style:TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.white),
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Email',
                        style:TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )),
                    TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.white),
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Password',
                        style:TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: _isObscure,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: new InputDecoration(
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
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                              child: SizedBox(width: 200,height: 45,
                                child: FlatButton(
                                  child: Text('Sign up',
                                      style:
                                      TextStyle(color: Colors.white, fontSize: 20)),
                                  color: Colors.purple[400],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  onPressed: () async {
                                    try {
                                      UserCredential userCredential =
                                          await FirebaseAuth
                                              .instance
                                              .createUserWithEmailAndPassword(
                                                  email: email, password: password);
                                      Navigator.pushNamed(context, '/address');
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'weak-password') {
                                        print('The password provided is too weak.');
                                        final snackBar = SnackBar(
                                            content: Text('Password is too weak.'));
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else if (e.code == 'email-already-in-use') {
                                        print(
                                            'The account already exists for that email.');
                                        final snackBar = SnackBar(
                                            content:
                                                Text('Email is already in use'));
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    } catch (e) {
                                      print(e);
                                    }
                                  },
                                ),
                              ),
                            )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
