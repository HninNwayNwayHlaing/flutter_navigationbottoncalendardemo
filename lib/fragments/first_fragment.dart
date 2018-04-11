import 'package:flutter/material.dart';
import 'package:square_calendar/square_calendar.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Column(
      children: <Widget>[
        new Container(
            child: new SquareCalendar(
              year: 2018,
              month: 3,
              crossAxissSpacing: 10.0,
              mainAxisSpacing: 10.0,
              tileBuilder: (child, index, date, baseDate, firstDayOfMonth,
                  lastDayOfMonth) {
                return new GridTile(child: child);
              },
              widgetBuilder:
                  (index, date, baseDate, firstDayOfMonth, lastDayOfMonth) {
                return new Container(
                  child: new Text(date.day.toString()),
                  alignment: Alignment.center,
                );
              },
            ),
            height: 500.0,
            alignment: Alignment.center),
        new Text("This is Square Calendar")
      ],
    ));
  }
}
