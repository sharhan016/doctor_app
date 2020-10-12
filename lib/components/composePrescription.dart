import 'package:flutter/material.dart';
import '../components/customAppBar.dart';

class ComposePrescription extends StatefulWidget {
  @override
  _ComposePrescriptionState createState() => _ComposePrescriptionState();
}

class _ComposePrescriptionState extends State<ComposePrescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarComponent(
        title: 'Prescriptions',
        leadingWidget: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        trailingWidget: IconButton(
          icon: Icon(Icons.search),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => print('search clicked'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.pop(context)),
                    Text('Create Prescription', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.attachment),
                        onPressed: () => Navigator.pop(context)),
                    IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () => Navigator.pop(context)),
                  ],
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('From', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(width: 40.0),
                  Text('Dr. ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text('Anil Seth', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0, top: 15.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('To', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(width: 60.0),
                  Text('Mr. ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text('Aman Pillai', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0, top: 15.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Subject', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(width: 20.0),
                  // Need to ADD TEXT INPUT FIELD
                  Text('Prescription for Ear infections', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0, top: 15.0),child: Container(height: 1.0, color: Theme.of(context).primaryColor),),
          ],
        ),
      ),
    );
  }
}
