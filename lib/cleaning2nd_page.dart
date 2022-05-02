import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cleaning extends StatefulWidget {
  const cleaning({Key? key}) : super(key: key);

  @override
  State<cleaning> createState() => _cleaningState();
}

class _cleaningState extends State<cleaning> {
  final TextEditingController noBedroom= TextEditingController();
  final TextEditingController noBathroom= TextEditingController();
  IconData icon1=Icons.check_box_outline_blank;
  Color iconcolor1=Colors.black;
  IconData icon2=Icons.check_box_outline_blank;
  Color iconcolor2=Colors.black;
  IconData icon3=Icons.check_box_outline_blank;
  Color iconcolor3=Colors.black;
  IconData icon4=Icons.check_box_outline_blank;
  Color iconcolor4=Colors.black;
  IconData icon5=Icons.check_box_outline_blank;
  Color iconcolor5=Colors.black;
  int flag=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: Colors.grey,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30.0,left:10),
                child: Text('Where do you want to \ncleaned?',
                style: TextStyle(
                   color: Colors.black,
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:30,right:30),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Image.asset('asset/image/seater-sofa.png',height: 30,width:30),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Text('Living Room',
                        style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:130.0),
                        child: IconButton(onPressed:(){
                          setState(() {
                            if(icon1==Icons.check_box_outline_blank) {
                              icon1 = Icons.check_box;
                              iconcolor1=Colors.green;
                              flag++;
                            }
                            else{
                              icon1=Icons.check_box_outline_blank;
                              iconcolor1=Colors.black;
                              flag--;
                            }
                          });
                        },
                            icon: Icon(icon1,color: iconcolor1,
                            )),
                      )
                    ],
                  )
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:30,right:30),
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Image.asset('asset/image/bed.png',height: 30,width:30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text('Bedroom',
                                style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:155.0),
                              child: IconButton(onPressed:(){
                                setState(() {
                                if(icon2==Icons.check_box_outline_blank) {
                                  icon2 = Icons.check_box;
                                  iconcolor2=Colors.green;
                                  flag++;
                                }
                                else{
                                  icon2=Icons.check_box_outline_blank;
                                  iconcolor2=Colors.black;
                                  flag--;
                                }
                              });},
                                  icon: Icon(icon2,color: iconcolor2,)),
                            )
                          ],
                        ),
                        SizedBox(height:10),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:20.0),
                                child: Text('Numbers of Bedrooms',
                                style:TextStyle(
                                  color:Colors.black,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:10),
                                child:SizedBox(
                                  width: 50,
                                  height: 40,
                                  child: TextField(
                                    maxLength: 2,
                                    controller: noBedroom,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:30,right:30),
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Image.asset('asset/image/bathtub.png',height: 35,width:35),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text('Bathroom',
                                style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:145.0),
                              child: IconButton(onPressed:(){
                                setState(() {
                                  if(icon3==Icons.check_box_outline_blank) {
                                    icon3 = Icons.check_box;
                                    iconcolor3=Colors.green;
                                    flag++;
                                  }
                                  else{
                                    icon3=Icons.check_box_outline_blank;
                                    iconcolor3=Colors.black;
                                    flag--;
                                  }
                                });
                              },
                                  icon: Icon(icon3,color: iconcolor3,)),
                            )
                          ],
                        ),
                        SizedBox(height:10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:20.0),
                                child: Text('Numbers of Bathrooms',
                                    style:TextStyle(
                                      color:Colors.black,
                                    )),
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:10),
                              child:SizedBox(
                                width: 50,
                                height: 40,
                                child: TextField(
                                  maxLength: 2,
                                  controller: noBathroom,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:30,right:30),
                child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Image.asset('asset/image/kitchen.png',height: 30,width:30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Text('Kitchen',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:165.0),
                          child: IconButton(onPressed:(){
                            setState(() {
                              if(icon4==Icons.check_box_outline_blank) {
                                icon4 = Icons.check_box;
                                iconcolor4=Colors.green;
                                flag++;
                              }
                              else{
                                icon4=Icons.check_box_outline_blank;
                                iconcolor4=Colors.black;
                                flag--;
                              }
                            });
                          },
                              icon: Icon(icon4,color: iconcolor4,)),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:30,right:30),
                child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Image.asset('asset/image/workspace.png',height: 30,width:30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Text('Office',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:180.0),
                          child: IconButton(onPressed:(){
                            setState(() {
                              if(icon5==Icons.check_box_outline_blank) {
                                icon5 = Icons.check_box;
                                iconcolor5=Colors.green;
                                flag++;
                              }
                              else{
                                icon5=Icons.check_box_outline_blank;
                                iconcolor5=Colors.black;
                                flag--;
                              }
                            });
                          },
                              icon: Icon(icon5,color: iconcolor5,)),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.arrow_forward_ios),
        onPressed: (){
          if(flag>0) {
            Navigator.pushNamed(context, '/calender');
          }

          else{
            final snackBar =
            SnackBar(content: Text('Please select atleast one service.'));
            ScaffoldMessenger.of(context)
                .showSnackBar(snackBar);
          }
        },
      ),
    );
  }
}
