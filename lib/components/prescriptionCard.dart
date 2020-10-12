import 'package:flutter/material.dart';

class PrescriptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(width: 1.0, color: Theme.of(context).primaryColor),),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor, border: Border(right: BorderSide(width: 1.0, color: Theme.of(context).primaryColor)),),
            child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('19',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 5,),
              Text('Sep',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],),),
         ),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 5.0),
           child: Center(
             child: Text('Prescription One')
           ),
         )
        ],
      ),
    );
  }
}