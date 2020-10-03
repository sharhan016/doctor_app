import 'package:flutter/material.dart';
import '../functions/jwt.dart';
import '../localization/localization.dart';
import '../components/customAppBar.dart';
import 'package:provider/provider.dart';
import '../screens/patients.dart';
import '../screens/booking.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  bool english = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: CustomAppBarComponent(
        title: 'Home',
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
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  // color: Theme.of(context).primaryColor,
                  ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/app-logo.jpg'),
                    width: 95,
                  ),
                  SizedBox(width: 10),
                  Text('Dr. Sania Lin')
                ],
              )),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            height: (MediaQuery.of(context).size.height),
            child: Column(
              children: [
                ListTile(
                  trailing: Icon(Icons.arrow_right),
                  title: Text('Home'),
                  //Text(DemoLocalization.of(context).translate('donateNow')),
                  onTap: () {
                    // Navigator.pushNamed(context, 'donatescreen');
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_right),
                  title: Text('Manage Bookings'),
                  //Text(DemoLocalization.of(context).translate('donateNow')),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingPage()),
                  ),
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_right),
                  title: Text('Prescriptions'),
                  //Text(DemoLocalization.of(context).translate('donateNow')),
                  onTap: () {
                    // Navigator.pushNamed(context, 'donatescreen');
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_right),
                  title: Text('Settings'),
                  //Text(DemoLocalization.of(context).translate('donateNow')),
                  onTap: () {
                    // Navigator.pushNamed(context, 'donatescreen');
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_right),
                  title: Text('Log Out'),
                  //Text(DemoLocalization.of(context).translate('donateNow')),
                  onTap: () {
                    // Navigator.pushNamed(context, 'donatescreen');
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 15),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Consultation',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatientPage()),
                  ),
                  child: Text('View All',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )),
        Container(
            // padding: EdgeInsets.only(left: 20.0),
            height: 200,
            width: 200,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('images/user.PNG')),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Annan Pillai',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Consulted on 17 Sep 2020',
                ),
              ],
            ),
          ),
      ]),
    );
  }
}
