import 'package:flutter/material.dart';

class HealthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Check')
      ),
      body: Container(
        color: Color(0xFFFAFAFB),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: ListView(
                      children: [ Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Basics', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Padding(padding: const EdgeInsets.only(top: 5.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Container(width: 110.0,child: Expanded(child: Text('Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)))),
                    Expanded(child: Text('Age', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('Gender', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('Height', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('Weight', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Container(width: 110.0,child: Expanded(child: Text('Aman Pillai', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)))),
                    Expanded(child: Text('35yrs', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('Male', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('5ft 4in', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                    Expanded(child: Text('62 kgs', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
                  ],
                ),
                SizedBox(height: 40.0),
                Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
                Text('Blood Pressure', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20.0,),
                    Container(
                      color: Colors.black,
                      height: 250,
                      width: 150,
                      child: Image(image: AssetImage('images/manpic.jpg'), height: 150, fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 30.0,),
                    Container(width: 90.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text('Systolic', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
                      SizedBox(height: 20.0,),
                      Text('109', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                      Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),child: Container(height: 1.0, width: 40.0, color: Theme.of(context).primaryColor),),
                      Text('70', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                      SizedBox(height: 20.0,),
                      Text('Diastolic', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
                    ],),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
                Text('Blood Glucose', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('8.2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('mmol / L', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
              Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Heart Rate', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('40', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('bpm', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Temperature', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('37', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('celsius', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Pulse', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('40', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('bpm', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Oxygen Saturation', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('97', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('%', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Weight', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('62', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('kg', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30.0, bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              Text('Hearing / Audiometry', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 220.0),
                    Text('14', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                    SizedBox(width: 20.0),
                    Text('db', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                Padding(padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
              ],
            ),]
          ),
        )
      ),
    );
  }
}