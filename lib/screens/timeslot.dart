import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TimeSlot extends StatefulWidget {
  @override
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  String selectedDate;
  @override
  Widget build(BuildContext context) {
    _pickDate() {
      DatePicker.showDateTimePicker(
        context,
        showTitleActions: true,
        minTime: DateTime(2020, 10, 14, 00, 00),
        maxTime: DateTime(2022, 10, 14, 00, 00),
        onChanged: (date) {
          print('change $date in time zone ' +
              date.timeZoneOffset.inHours.toString());
          // print('change $date');
        },
        onConfirm: (date) {
          var dates = DateTime.parse(date.toString());
          var formattedDate =
              "${dates.year}-${dates.month}-${dates.day} ${dates.hour}:${dates.second}";
          // print('$formattedDate');
          setState(() {
            selectedDate = formattedDate;
          });
          print(selectedDate);
          // print('confirm $date');
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Time Slot'),
      ),
      body: Container(
        child: Row(
          children: [
            RaisedButton(
              onPressed: () {
                _pickDate();
              },
              child: Text("PickData"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("PickTime"),
            )
          ],
        ),
      ),
    );
  }
}
