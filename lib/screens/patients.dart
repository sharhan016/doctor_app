import 'package:flutter/material.dart';
import '../components/customAppBar.dart';
import '../components/patientCard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class PatientPage extends StatefulWidget {
  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: CustomAppBarComponent(
        title: 'Patients',
        leadingWidget: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => _drawerKey.currentState.openDrawer(),
        ),
        trailingWidget: IconButton(
          icon: Icon(Icons.search),
          iconSize: 30,
          color: Colors.white,
          onPressed: null,
        ),
        ),
    body: Column(
      children: [
        SizedBox(height: 20),
        PatientCard()
      ],
    ),
    );
  }
}