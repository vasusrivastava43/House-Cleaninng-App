import 'package:flutter/material.dart';

class yrr extends StatefulWidget {
  const yrr({Key? key}) : super(key: key);

  @override
  _yrrState createState() => _yrrState();
}

class _yrrState extends State<yrr> {
  int press=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,45,0,80),
                child: Center(
                  child: Text('Select What Do You Want?',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    )
                    ,),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context,'/clean');
                          },
                          child: Image.asset('asset/image/mop (1).png',
                              height: 30),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,0,0,0),
                    child: Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context,'/electician');
                          },
                          child: Image.asset('asset/image/electrician.png',
                            height: 30,),
                        ),
                      ),

                    ),
                  ),
                ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,15,100,0),
                    child: Text('Cleaning',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35,15,0,0),
                    child: Text('Electrician',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Container(
                      height: 130
                      ,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/plumber');
                          },
                          child: Image.asset('asset/image/plumber.png',
                              height: 30),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,0,0,0),
                    child: Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/carpenter');
                          },
                          child: Image.asset('asset/image/carpenter.png',
                            height: 30,),
                        ),
                      ),

                    ),
                  ),
                ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,15,100,0),
                    child: Text('Plumber',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35,15,0,0),
                    child: Text('Carpenter',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/calender');
                          },
                          child: Image.asset('asset/image/gardening (1).png',
                              height: 30),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,0,0,0),
                    child: Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/painter');
                          },
                          child: Image.asset('asset/image/painter.png',
                            height: 30,),
                        ),
                      ),

                    ),
                  ),
                ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,15,100,0),
                    child: Text('Gardening',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35,15,0,0),
                    child: Text('Painter',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),


            ]

        ),
      ),

    );
  }
}