import 'dart:math';
import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart' hide Step;
import 'package:flutter_test_application/Components/constant.dart';
import 'package:flutter_test_application/Shared/Helper/Helper%20Models/dash.dart';
import 'package:flutter_test_application/Shared/Widgets/bottomnavbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:toggle_switch/toggle_switch.dart';


class Delievery extends StatefulWidget {
  const Delievery({ Key? key }) : super(key: key);

  @override
  State<Delievery> createState() => _DelieveryState();
}

class _DelieveryState extends State<Delievery> {

 
  Widget _buildListItem(BuildContext context, int index) {
    double indexx = (index)/10;
    bool isInteger(num value) => (value % 1) == 0;
    print(indexx);

    //horizontal
    return 
    isInteger(indexx) == true?
    InkWell(
      onTap: (){
        setState(() {
          weight = indexx.round();
        });
      },
      child: SizedBox(
        key: widget.key,
        width: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 40,
              width: 3,
              color: Theme.of(context).unselectedWidgetColor.withOpacity(0.3),
            ),
            Text((indexx.round()).toString(),
                 key: widget.key,
                 style: normalText
              ),
          ],
        ),
      ),
    ):
     InkWell(
      onTap: (){
        setState(() {
          weight = indexx.round();
        });
        
      },
       child: SizedBox(
        key: widget.key,
        width: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 20,
              width: 3,
              color: Theme.of(context).unselectedWidgetColor.withOpacity(0.3),
            ),
          ],
        ),
         ),
     );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
     color:primaryColor,
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,  
     child:SingleChildScrollView(
       child: Column(
       children: [
       Container(
         width: MediaQuery.of(context).size.width/2,
         margin: const EdgeInsets.fromLTRB(10,30,10,10),
         key: widget.key,
         decoration: BoxDecoration(
         color:Theme.of(context).primaryColorLight,
         boxShadow: [
         BoxShadow(
             color: Colors.grey.withOpacity(0.3),
             spreadRadius: 1,
             blurRadius: 7,
             offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
         borderRadius: BorderRadius.circular(25)
         ),
         child: Row(
           key: widget.key,
           mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           children: [
             Icon(Icons.location_on,color:Theme.of(context).selectedRowColor,),
             Text(
               "99 E 52nd St,New York",
               key: widget.key,
                ),
               ],
              ),
             ),
           Padding(
             padding: const EdgeInsets.fromLTRB(15,15,15,10),
             child: ListTile(
             key: widget.key,
             title: Text("New Delivery",
             key: widget.key,
             style: headerText
               ),
             subtitle: Padding(
               padding: const EdgeInsets.fromLTRB(0,15,0,10),
               child: Text("Please, follow to order flow to create a new delivery it takes few minutes",
               key: widget.key,
               style: normalText
                 ),
             ),
             ),
           ),
           Container(
           margin: const EdgeInsets.fromLTRB(15,0,15,10),
           width: MediaQuery.of(context).size.width,
           child: ToggleSwitch(
           totalSwitches: 2,
           fontSize: 16.0,
           minHeight: 40,
           minWidth: 175,
           cornerRadius: 15,
           initialLabelIndex: 1,
           activeFgColor:Theme.of(context).selectedRowColor,
           activeBgColor: [Theme.of(context).primaryColorLight],
           inactiveBgColor:Theme.of(context).primaryColorLight,
           inactiveFgColor: sharkColor,
           labels: const ["Send", "Receive",],
           onToggle:(index){
              },
             ),
           ),
           Container(
           height: MediaQuery.of(context).size.height/4,
           width: MediaQuery.of(context).size.width,
           margin: const EdgeInsets.fromLTRB(15,0,15,10),
           padding: const EdgeInsets.fromLTRB(15,10,15,10),
           decoration:BoxDecoration(
           color:Theme.of(context).primaryColorLight, 
           borderRadius: BorderRadius.circular(15)
           ),
           child:Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Text("Pickup Location",
                   key: widget.key,
                   style: headerText
                    ),
                    FaIcon(FontAwesomeIcons.arrowRotateRight,key: widget.key,
                    color:Theme.of(context).unselectedWidgetColor.withOpacity(0.3))
                 ],
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,25,10,5),
                    child:Column(children: <Widget>[
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(width: 1.5, color: Theme.of(context).unselectedWidgetColor)),
                    ),
                    Dash(
                        key: widget.key,
                        direction: Axis.vertical,
                        length: 50,
                        dashLength: 15,
                        dashColor:Theme.of(context).unselectedWidgetColor),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          ),
                      child: Container(
                        key: widget.key,
                        height: 20,
                        child:Icon(Icons.location_on,color:Theme.of(context).selectedRowColor,size: 20,),
                      ),
                     ),
                    ],
                   ),
                  ),
            Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,25,10,5),
                      child: Text("Set pickup location",
                                key: widget.key,
                                style: unSelectedText
                        ),
                      ),
     
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,40,10,5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reciever location:Current Location",
                                key: widget.key,
                                style: unSelectedText
                        ),
                      SizedBox(height: 5.0, key: widget.key,),
                      Text("99 E 52nd St,New York",
                        key: widget.key,
                        style: normalText,
                        ),
                      ],
                    ),
                   ),
                  ],
                ),
                ],
              ),
             ],
            ),
           ),
           Container(
           height: selections[2] == true?MediaQuery.of(context).size.height/2.1:
           MediaQuery.of(context).size.height/7,
           width: MediaQuery.of(context).size.width,
           margin: const EdgeInsets.fromLTRB(15,0,15,10),
           padding: const EdgeInsets.fromLTRB(15,10,15,10),
           decoration:BoxDecoration(
           color:Theme.of(context).primaryColorLight, 
           borderRadius: BorderRadius.circular(15)
           ),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("Delivery Time",
                   key: widget.key,
                   style: headerText
                    ),
                  SizedBox(width: 150.0,),
                  Text("${hours} hours",
                   key: widget.key,
                   style:TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                    ),
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,25,15,10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for(int i=0; i<deliveryTimes.length; i++)
                      deliveryTimes[i] == "Express"?
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(selections[i] == true){
                               selections[i] = false;
                               
                              }
                              else{
                                selections[i] = true;
                                if(selections[i] == true && i ==0) {
                                   selections[i+1] = false;
                                   selections[i+2] = false;
                                }
                              }
                              
                            });
                            
                          },
                          child: Badge(
                          shape: BadgeShape.square,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(5),
                          badgeColor:whiteColor,
                          position: BadgePosition.topEnd(top: -15, end: 15),
                          padding: const EdgeInsets.all(2),
                          badgeContent: Text(
                           'New',
                          key: widget.key,
                          style: badgeText
                          ),
                                  child: Text(deliveryTimes[i],
                                  key: widget.key,
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color : selections[i] == true?redColor:sharkColor
                                    ),
                                   ),
                           ),
                        ),
                      ):Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(selections[i] == true){
                               selections[i] = false;
                              }
                              else{
                                selections[i] = true;
                                 if(selections[i] == true && i ==1) {
                                   selections[i+1] = false;
                                   selections[i-1] = false;
                                }
                                else if(selections[i] == true && i ==2) {
                                   selections[i-1] = false;
                                   selections[i-2] = false;
                                }
                              }
                            });
                          },
                          child: Text(deliveryTimes[i],
                                  key: widget.key,
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color : selections[i] == true?redColor:sharkColor
                           )
                          ),
                        ),
                      ),
                     SizedBox(width: 8.0,key: widget.key,),
                    ],
                  ),
                ),
                selections[2] == true?DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: redColor,
                selectedTextColor: whiteColor,
                onDateChange: (date) {
                // New date selected
                setState(() {
                 selectedDate = date;
                   });
                 },
               ):SizedBox(key: widget.key),

               selections[2] == true?Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               NumberPicker(
               minValue: 00,
               maxValue: 23,
               zeroPad: true,
               textStyle: TextStyle(fontSize: 16),
               selectedTextStyle: TextStyle(color: redColor,fontSize: 16),
               value: hourValue,
               infiniteLoop: true,
               onChanged: (value) {
               setState(() {
               hourValue = value;
               time = DateTime(dateTimeNow.year, dateTimeNow.month,dateTimeNow.day, hourValue, minValue);
               selectedTime = time;
               diff = dateTimeNow.difference(selectedTime);
               hours = diff!.inHours;
                });
              },
            ),
        const Text(
          ":",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        NumberPicker(
          minValue: 00,
          maxValue: 59,
          zeroPad: true,
          value: minValue,
          textStyle: TextStyle(fontSize: 16),
          selectedTextStyle: TextStyle(color: redColor,fontSize: 16),
          infiniteLoop: true,
          onChanged: (value) {
            setState(() {
              minValue = value;
              time = DateTime(dateTimeNow.year, dateTimeNow.month,dateTimeNow.day, hourValue, minValue);
              selectedTime = time;
              print("${selectedTime} selected time");
              diff = dateTimeNow.difference(selectedTime);
              hours = diff!.inHours;
                      });
                    },
                  ),
                ],
              )
             :SizedBox(key: widget.key)
             ],
            ),
           ),

           Container(
           height: MediaQuery.of(context).size.height/5.5,
           width: MediaQuery.of(context).size.width,
           margin: const EdgeInsets.fromLTRB(15,0,15,10),
           padding: const EdgeInsets.fromLTRB(15,10,15,10),
           decoration:BoxDecoration(
           color:Theme.of(context).primaryColorLight, 
           borderRadius: BorderRadius.circular(15)
           ),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Text("Size",
                   key: widget.key,
                   style: headerText
                    ),
                   SizedBox(width: 210.0,),
                   Text("${weight.toString()} Kgm",
                   key: widget.key,
                   style:TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                    ),
                   //
                 ],
               ),
                SizedBox(key: widget.key, height: 10.0,),
                 Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      for(int i=0; i<150; i++)
                      _buildListItem(context, i),
                      SizedBox(width: 8.0,key: widget.key,),
                    ],
                    // dynamicSizeEquation: customEquation, //optional
                  ),
                ),
             ],
            ),
           ),

           Container(
           height: MediaQuery.of(context).size.height/3,
           width: MediaQuery.of(context).size.width,
           margin: const EdgeInsets.fromLTRB(15,0,15,10),
           padding: const EdgeInsets.fromLTRB(15,10,15,10),
           decoration:BoxDecoration(
           color:Theme.of(context).primaryColorLight, 
           borderRadius: BorderRadius.circular(15)
           ),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Size",
                   key: widget.key,
                   style: headerText
                    ),
                SizedBox(key: widget.key, height: 10.0,),
                 Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/6,
                              width: MediaQuery.of(context).size.width/4,
                              child: Card(
                               elevation: 2,
                               child:Padding(
                                 padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                 child: Image.asset("assets/box.jpg",height: 25,),
                               ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Small",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 14,color:sharkColor)
                                   ),
                                SizedBox(width: 18,),
                                Text("\$${3} ",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 12,color: redColor,fontWeight: FontWeight.bold)
                                  ),
                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Center(
                              child: Text("Fits in usage box 27 * 4 * 31",
                                    key: widget.key,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12,color:mischkaColor)
                                     ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.0,key: widget.key,),
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/6,
                              width: MediaQuery.of(context).size.width/4,
                              child: Card(
                               elevation: 2,
                               child:Padding(
                                 padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                 child: Image.asset("assets/box.jpg",height: 25,),
                               ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Medium",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 14,color:sharkColor)
                                   ),
                                SizedBox(width: 18,),
                                Text("\$${5} ",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 12,color: redColor,fontWeight: FontWeight.bold)
                                  ),
                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Center(
                              child: Text("Fits in usage box 27 * 4 * 31",
                                    key: widget.key,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12,color:mischkaColor)
                                     ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/6,
                              width: MediaQuery.of(context).size.width/4,
                              child: Card(
                               elevation: 2,
                               child:Padding(
                                 padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                 child: Image.asset("assets/box.jpg",height: 25,),
                               ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Large",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 14,color:sharkColor)
                                   ),
                                SizedBox(width: 18,),
                                Text("\$${9} ",
                                  key: widget.key,
                                  style: TextStyle(fontSize: 12,color: redColor,fontWeight: FontWeight.bold)
                                  ),
                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Center(
                              child: Text("Fits in usage box 27 * 4 * 31",
                                    key: widget.key,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12,color:mischkaColor)
                                     ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    // dynamicSizeEquation: customEquation, //optional
                  ),
                ),
             ],
            ),
           ),

          ],
        ),
     ),
     ),
     //Theme.of(context).primarySwatch
     bottomNavigationBar:BottomNavigationBarWidget()
    );
  }
}