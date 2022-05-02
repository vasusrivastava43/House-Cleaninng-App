import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  String selectedFrequency = "No Repeat";
  TextEditingController dateinput=TextEditingController();
  TextEditingController timeinput=TextEditingController();
  void initState() {
    dateinput.text = DateFormat('d MMM-yyy').format(DateTime.now());
    // timeinput.text = DateFormat('HH:mm').format(TimeOfDay.now());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.only(top:70,left: 10),
              child: Center(
                child: Text('Select Date and Time',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
            SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right:30),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 5),
                        child: Text('Date',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right:10),
                        child: TextField(readOnly: true,
                            controller: dateinput,
                            decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today,color: Colors.black,), //icon of text field
                                labelText: "Enter Date" //label text of field
                            ),
                            onTap: ()async {
                               final pickedDate= await showDatePicker(context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2050));
                              if(pickedDate != null ){
                                String formattedDate = DateFormat('dd MMM-yyyy').format(pickedDate);
                                setState(() {
                                  dateinput.text = formattedDate;
                                });
                              }
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right:30),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 5),
                          child: Text('Time',
                            style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                    ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,right:10),
                          child: TextField(
                            readOnly: true,
                            controller: timeinput,
                            decoration: InputDecoration(
                              icon: Icon(Icons.timer,color: Colors.black,),
                              labelText: 'Enter Time'
                            ),
                            onTap: ()async{
                              final pickedtime=await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if(pickedtime!=null){
                                DateTime parsedTime=DateFormat.jm().parse(pickedtime.format(context).toString());
                                String formattedTime=DateFormat('HH:mm').format(parsedTime);
                                setState(() {
                                  timeinput.text=formattedTime;
                                });
                              }
                            },
                          ),
                        )
                      ],
                    )
                  ),
                ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Repeat',
                  style:TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
            ),
            SizedBox(height:10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      changeFrequency("No Repeat");
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 8),
                        child: Text('No Repeat',
                        style:TextStyle(
                          fontSize: 19,
              )),
                      ),
                      decoration: (selectedFrequency == "No Repeat") ? BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ) : BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      changeFrequency("Daily");
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 32),
                        child: Text('Daily',
                        style:TextStyle(
                          fontSize: 19,
              )),
                      ),
                      decoration: (selectedFrequency == "Daily") ? BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ) : BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      changeFrequency("Weekly");

                    },
                    child: Container(

                      height: 50,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 25),
                        child: Text('Weekly',
                        style:TextStyle(
                          fontSize: 19,
              )),
                      ),
                      decoration: (selectedFrequency == "Weekly") ? BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ) : BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(

                    onTap: (){
                      changeFrequency("Monthly");
                    },
                    child: Container(

                      height: 50,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 25,),
                        child: Text('Monthly',
                        style:TextStyle(
                          fontSize: 19,
              )),
                      ),
                      decoration: (selectedFrequency == "Monthly") ? BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ) : BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            )
          ]
        )
      ),
    );
  }
  void changeFrequency(String frequency)
  {
    selectedFrequency = frequency;
    setState(() {

    });
  }
}
