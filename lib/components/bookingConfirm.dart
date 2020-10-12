import 'package:flutter/material.dart';
import 'customAppBar.dart';

class BookingConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarComponent(
        title: 'Manage Bookings',
        leadingWidget: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        trailingWidget: IconButton(
          icon: Icon(Icons.search),
          iconSize: 30,
          //color: Colors.transparent,
          onPressed: () => print('Hello'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 20.0, 10.0, 20.0),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text('Time:', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                SizedBox(width: 15.0,),
                Text('11 AM', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),),
              ],),

               Row(children: [
                Text('Patient:', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                SizedBox(width: 15.0,),
                Text('Aman Pillai', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),),
              ],),

               Row(children: [
                Text('Reason for Consultation', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                SizedBox(width: 15.0,),
                Expanded(
                                  child: Text('General Checkup', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900
                            ),),
                ),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  onPressed: () => print('Accept'), 
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.green,
                  child: Text(
                            'Accept',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                  FlatButton(
                  onPressed: () => print('Accept'), 
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.green,
                  child: Text(
                            'Decline',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                  FlatButton(
                  onPressed: () => print('Accept'), 
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.green,
                  child: Text(
                            'Modify',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*

FlatButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.green,
                          onPressed: () {
                            print('Hindi Pressed');
                          },
                          child: Text(
                            'Hindi',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )),



*/