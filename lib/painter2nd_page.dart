import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Painter extends StatefulWidget {
  const Painter({Key? key}) : super(key: key);

  @override
  State<Painter> createState() => _PainterState();
}

class _PainterState extends State<Painter> {
  final TextEditingController noBedroom= TextEditingController();
  final TextEditingController noBathroom= TextEditingController();
  IconData icon1=Icons.check_box_outline_blank;
  Color iconcolor1=Colors.black;
  IconData icon2=Icons.check_box_outline_blank;
  Color iconcolor2=Colors.black;
  int flag=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      //backgroundColor: Colors.grey,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30.0,left:10),
                child: Text('Where do you want to \nPaint?',
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
                          child: Image.asset('asset/image/painting.png',height: 30,width:30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Text('One Room',
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
                    height: 55,
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
                              child: Image.asset('asset/image/living-room.png',height: 30,width:30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text('More than One Room',
                                style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:80.0),
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

            ],
          ),
        ),
      ),
      ]
    ),

    ),
      ),
    );
  }
}
