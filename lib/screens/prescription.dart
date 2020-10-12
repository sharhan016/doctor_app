import 'package:flutter/material.dart';
import '../components/customAppBar.dart';
import '../components/prescriptionCard.dart';
import '../components/composePrescription.dart';

class PrescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarComponent(
        title: 'Prescriptions',
        leadingWidget: IconButton(
          icon: Icon(Icons.arrow_back),
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
      body: Container(
        child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Aman Pillai',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Expanded(
                        child: Text(
                      'Previous Prescriptions',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              PrescriptionCard(),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  onPressed: () => print('create button clicked'),
                  elevation: 2,
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ComposePrescription(),
                            )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 28,
                          ),
                          SizedBox(width: 5),
                          Text('Create Prescription',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ])),
      ),
    );
  }
}

// Positioned(
//                   bottom: 20,
//                   right: 20,
//                   child: Container(
//                     child: Row(
//                       children: [
//                         Text('Create Prescription')
//                       ],
//                     ),
//                   ))
