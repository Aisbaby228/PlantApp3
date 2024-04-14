import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/utils/event.dart';
import 'package:table_calendar/table_calendar.dart';


class TableCalendar1 extends StatefulWidget {
  const TableCalendar1({super.key});

  @override
  State<TableCalendar1> createState() => _TableCalendarState();
}

class _TableCalendarState extends State<TableCalendar1> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime today = DateTime.now();
  Map<DateTime, List<Event>> events = {};
  TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvents;
  @override

  void initState(){
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
   // _selectedEvents.value = _getEventsForDay(_selectedDay);
  }


  @override

  void dispose(){
    super.dispose();
  }


  void _onDaySelected(DateTime selectedDay, DateTime focusedDay){
    if(!isSameDay(_selectedDay, selectedDay)){
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
    
  }
  
  List<Event> _getEventsForDay(DateTime day){
    return events[day] ?? [];
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            scrollable: true,
            title: Text("Название события"),
            content: Padding(padding: EdgeInsets.all(8),
            child: TextField(
              controller: _eventController,
            ),
            ),
            actions: [
              ElevatedButton(onPressed: (){
                events.addAll({

                 _selectedDay!:[Event(_eventController.text)]
              });
                Navigator.of(context).pop();
                _selectedEvents.value = _getEventsForDay(_selectedDay!);

              }, child: Text("Отправить"))
            ],
          );
        });
      }, child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column( 
        children: [
           TableCalendar(
              locale: 'en_US',
              headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
              availableGestures: AvailableGestures.all,
              focusedDay: _focusedDay, 
              startingDayOfWeek: StartingDayOfWeek.monday,
              selectedDayPredicate: (day)=> isSameDay(_selectedDay, today),
              firstDay: DateTime.utc(2023,09,14), 
              lastDay: DateTime.utc(2040,09,14),
              eventLoader: _getEventsForDay,
              onDaySelected: _onDaySelected,
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                
              ), 
              onFormatChanged: (format){
                if(_calendarFormat != format){
                  setState(() {
                    _calendarFormat = format;
                  });

                }
                
              },
              onPageChanged: (focusedDay){
                _focusedDay = focusedDay;
              },
              ),
              SizedBox(height: 8,),
              Expanded(
                child: ValueListenableBuilder<List<Event>>(
                  valueListenable: _selectedEvents,
                   builder: (context, value,_) {
                    return ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          onTap: ()=> print(""),
                          title: Text("${value[index]}"),
                        ),
                      );
                    });
                   }),
              )
        ],
          ),
      ),
    );
  }

  
}