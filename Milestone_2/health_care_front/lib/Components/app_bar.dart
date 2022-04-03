import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'date_button.dart';

class CustomAppBar extends StatefulWidget {
 final Function getAnalysis;

  CustomAppBar({Key? key,required this.getAnalysis}) : super(key: key);
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  DateTimeRange dateRange =  DateTimeRange(start:DateTime.now(), end:DateTime.now(),);

  @override
  Widget build(BuildContext context) {
Future pickDateRange() async{
 dynamic newDateRange =await showDateRangePicker(context: context, initialDateRange : dateRange,
  firstDate:DateTime(2010) ,
  lastDate:DateTime.now(),
 );
 if(newDateRange!=null){
   setState(() {
     dateRange = newDateRange;
   });
 }
}
    final start= dateRange.start;
    final end= dateRange.end;
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
         const Icon(Icons.health_and_safety_sharp,color: fPrimaryColor,),
        const  SizedBox(width: 5),
          Text(
            "Health Care System".toUpperCase(),
            style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
       const   Spacer(),
          DateButton(
            title: "From",
            text: "${start.year}/${start.day}/${start.month}",
            press: pickDateRange,
          ),
          DateButton(
            title: "To",
            text: "${end.year}/${end.day}/${end.month}",
            press: pickDateRange,
          ),
          ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        onPressed: (){widget.getAnalysis(dateRange);},
        child: Text(
          "Get Analysis".toUpperCase(),
                    style: TextStyle(color: Colors.white),
        ),
      ),
    )
        ],
      ),
    );
  }
}

