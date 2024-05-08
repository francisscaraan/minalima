//import 'dart:js';
import 'package:flutter/material.dart';
import 'main.dart';

class toDoPage extends StatefulWidget {
  toDoPage({Key? key}) : super(key: key);

  @override
  State<toDoPage> createState() => _toDoPageState();
}

class _toDoPageState extends State<toDoPage> {
  final todosList = ToDo.todoList();
  final _todoController = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(
        'To Do',
        style: TextStyle(
          fontFamily: 'Inter-Bold',
        ),
      ),
      toolbarHeight: 70,
      //elevation: 20,
      backgroundColor: Color(0xFFEEEFF5),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
          ));
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Wrap(
            children: [
              IconButton(
                onPressed: () {
                  openDialog();
                },
                icon: Icon(Icons.add, color: Colors.black,),
              ),
            ],
          ),
        )
      ],
    ),
    body: ListView(
      children: [
        for ( ToDo todo in todosList )
          toDoItem(
            todo: todo,
            onToDoChanged: _handleToDoChange,
            onDeleteItem: _deleteToDoItem,
          ),
      ],
    ),
  );
  Future openDialog() => showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: Text('Add Task'),
      content: TextField(
        controller: _todoController,
        decoration: InputDecoration(
          hintText: 'type here...',
        ),
      ),
      actions: [
        TextButton(
          onPressed: (){
            _addToDoItem(_todoController.text);
          }, 
          child: Text(
            'Add', 
            style: TextStyle(
              fontFamily: 'Inter-Bold',
              color: Color.fromRGBO(87, 145, 179, 1),
              fontSize: 16,
            ),
          )
        ),
      ],
    ),
  );

  void _handleToDoChange(ToDo todo){
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
  void _deleteToDoItem(String id){
    setState((){
      todosList.removeWhere((item) => item.id == id);
    });
  }
  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(id: DateTime.now().microsecondsSinceEpoch.toString(), todoText: toDo));
    });
    _todoController.clear();
  }
  
}

class toDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const toDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      constraints: BoxConstraints(maxHeight: 56,),
      height: 202,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(1.0, 1.0),
            blurRadius: 10,
            spreadRadius: 0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ]
      ),
      child: Container(
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          leading: Icon(
            todo.isDone? Icons.check_box : Icons.check_box_outline_blank, 
            color: Color.fromRGBO(87, 145, 179, 1)
          ),
          title: Text(
            todo.todoText!, 
            style: TextStyle(fontFamily: 'Inter-Regular', decoration: todo.isDone? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            child: IconButton(
              onPressed: (){
                onDeleteItem(todo.id);
              },
              icon: Icon(Icons.delete),
              iconSize: 22,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return[
      ToDo(id: '01', todoText: 'Do laundry',),
      ToDo(id: '02', todoText: 'House cleaning',),
      ToDo(id: '03', todoText: 'Review for exams',),
      ToDo(id: '04', todoText: 'Ethics Protocol',),
      ToDo(id: '05', todoText: 'Shopping',),
    ];
  }
}
