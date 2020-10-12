import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/dashboard.dart';
import 'screens/patients.dart';
import 'screens/prescription.dart';
import 'screens/booking.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name){
      case 'loginscreen':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case 'homescreen':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case 'patientscreen':
        return MaterialPageRoute(builder: (_) => PatientPage());
      case 'bookingscreen':
        return MaterialPageRoute(builder: (_) => BookingPage());
      case 'prescriptionscreen':
        return MaterialPageRoute(builder: (_) => PrescriptionPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Container(
              child: Center(
                child: Text('Check Route Name'),
              ),
            ),
          ),
        );
    }
  }
}