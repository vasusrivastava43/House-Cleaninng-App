import 'package:I_SHINE/carpenter2nd_page.dart';
import 'package:I_SHINE/pumber2nd_page.dart';
import 'splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'cleaning2nd_page.dart';
import 'calender.dart';
import 'services.dart';
import 'electician2nd_page.dart';
import 'carpenter2nd_page.dart';
import 'painter2nd_page.dart';
import 'pumber2nd_page.dart';
import 'address.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        appId: '1:448618578101:web:0b650370bb29e29cac3efc',
        messagingSenderId: '448618578101',
        projectId: 'react-native-firebase-testing',
        authDomain: 'react-native-firebase-testing.firebaseapp.com',
        databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
        storageBucket: 'react-native-firebase-testing.appspot.com',
        measurementId: 'G-F79DJ0VFGS',
      ),
    );
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>SplashScreen(),
      '/In':(context)=> signIn(),
      '/Up':(context)=> signUp(),
      '/home':(context)=>yrr(),
      '/clean':(context)=>cleaning(),
      '/calender':(context)=>cal(),
      '/front':(context)=>front_page(),
      '/electician':(context)=>electrician(),
      '/carpenter':(context)=>Carpenter(),
      '/painter':(context)=>Painter(),
      '/plumber':(context)=>plumber(),
      '/address':(context)=>Address(),
    },
  ));
}
class front_page extends StatefulWidget {

  @override
  State<front_page> createState() => _State();
}

class _State extends State<front_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/image/ishinelogo5.png',height: 250,width: 270,),
                Image.asset('asset/image/splash.png'),
                SizedBox(height: 40,),
                SizedBox(width: 200,
                  child: RaisedButton(onPressed: (){Navigator.pushNamed(context,'/In');},
                      color: Colors.purple[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),)),
                ),
              ],
          ),
    );
  }
}
