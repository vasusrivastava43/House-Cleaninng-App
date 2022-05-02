import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context,'/home');
          },
          child: Icon(
            Icons.check,
          ),

        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text('Your Location',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 10),
                        child: Text('Name',
                            style:TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 30,bottom: 10),
                        child: TextField(

                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            icon: Icon(Icons.person,color: Colors.black,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 10),
                        child: Text('Phone No.',
                            style:TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 30,bottom: 10),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            icon: Icon(Icons.phone,color: Colors.black,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 10),
                        child: Text('Full Address',
                            style:TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 30,bottom: 10),
                        child: TextField(

                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            icon: Icon(Icons.home,color: Colors.black,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}