// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:base_project_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils.dart';


class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidget createState() => _CalendarWidget();
}

class _CalendarWidget extends State<CalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Card(
        elevation: 4,
        color: Colors.blueGrey[50],
        child: TableCalendar(
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            // Use `selectedDayPredicate` to determine which day is currently selected.
            // If this returns true, then `day` will be marked as selected.

            // Using `isSameDay` is recommended to disregard
            // the time-part of compared DateTime objects.
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            // No need to call `setState()` here
            _focusedDay = focusedDay;
          },
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: tBlack,
            ),
            weekendStyle: TextStyle(
              color: tGray2,

            ),
          ),
          calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(
              color: tBlack,
            ),
            weekendTextStyle: TextStyle(
              color: tGray2,
            ),
          ),
          headerStyle: HeaderStyle(
            titleTextStyle: TextStyle(
              color: tBlack,
              fontSize: 16
            ),
            titleCentered: true,
            // decoration: BoxDecoration(
            //   color: Colors.tealAccent,
            //   borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
            // )
          )
        ),
      ),

    );
  }
}
