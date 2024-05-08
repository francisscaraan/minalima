import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mina5/notes.dart';
import 'package:table_calendar/table_calendar.dart';
import 'main.dart';
import 'Todo.dart';
import 'events.dart';


//home

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        //elevation: 0,
        backgroundColor: Color(0xFFEEEFF5),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Menu(),
            ));
          },
          icon: Icon(Icons.menu_rounded),
        ),
        actions: [
          Image.asset('lib/icons/minalima_logo.png'),
        ],
      ),
      body: ListView(
        children: [
          calendar(),
          toDoButton(),
          eventsButton(),
          notesButton(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Daily',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'Inter-Bold',
              ),
            ),
          ),
          Container(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                quote(),
                stickers(),
              ],
            ),
          ),
        ],
      )
    );
  }

  //calendar
  Widget calendar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        constraints: BoxConstraints(maxHeight: 410,),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 28.0),
              child: TableCalendar(
                headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true, titleTextStyle: TextStyle(color: Color.fromRGBO(87, 145, 179, 1), fontFamily: 'Inter-Bold', fontSize: 20)),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day)=>isSameDay(day, today),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(fontFamily: 'Inter-Bold'),
                  weekendStyle: TextStyle(fontFamily: 'Inter-Bold'),
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(87, 145, 179, 1)), 
                  selectedDecoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(87, 145, 179, 100)),
                ),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                onDaySelected: _onDaySelected,
              ),  
            ),
          ],
        )
      )
    );
  }

  //----------dropdowns--------------------------------------------------

  //to Do
  Widget toDoButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 44, 20, 20),
      child: Container(
        constraints: BoxConstraints(maxHeight: 56,),
        height: 202,
        width: 340,
        decoration: BoxDecoration(
          color: Color.fromRGBO(87, 145, 179, 100),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(26, 0, 0, 0),
              title: const Text(
                'To Do List',
                style: TextStyle(
                  fontFamily: 'Inter-Bold',
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => toDoPage()));
              },
            ),
          ],
        )
      )
    );
  }

  //events
  Widget eventsButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Container(
        constraints: BoxConstraints(maxHeight: 56,),
        height: 202,
        width: 340,
        decoration: BoxDecoration(
          color: Color.fromRGBO(87, 145, 179, 100),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(26, 0, 0, 0),
              title: const Text(
                'Events',
                style: TextStyle(
                  fontFamily: 'Inter-Bold',
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => eventsPage()));
              },
            ),
          ],
        )
      )
    );
  }
  //Notes
  Widget notesButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Container(
        constraints: BoxConstraints(maxHeight: 56,),
        height: 202,
        width: 340,
        decoration: BoxDecoration(
          color: Color.fromRGBO(87, 145, 179, 100),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ]
        ),
        child: Wrap(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(26, 0, 0, 0),
              title: const Text(
                'Notes',
                style: TextStyle(
                  fontFamily: 'Inter-Bold',
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => notesPage()));
              },
            ),
          ],
        )
      )
    );
  }


  //---------------------------daily-----------------------------

  //quotes
  Widget stickers() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
      child: Container(
        constraints: BoxConstraints(maxHeight: 260,),
        height: 260,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 74, 28, 12),
                child: Text(
                  'Stickers will appear here',
                  style: TextStyle(
                    fontFamily: 'Inter-Light',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Wrap(
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(87, 145, 179, 100)),
                      ),
                      child: Text(
                        'Collect',
                        style: TextStyle(
                          fontFamily: 'Inter-SemiBold',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  //stickers
  Widget quote() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        constraints: BoxConstraints(maxHeight: 260,),
        height: 260,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 26, 14, 12),
                child: Text(
                  '"Yesterday\'s the past, tomorrow\'s the future, but today is a gift."',
                  style: TextStyle(
                    fontFamily: 'Inter-SemiBold',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 16, 6),
                child: Wrap(
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.favorite_border_rounded, color: Colors.black,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.save_alt_rounded, color: Colors.black),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.ios_share_rounded, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}