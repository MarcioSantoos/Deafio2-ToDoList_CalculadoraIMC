import 'package:application_calculadora/shared/custom_appbar.dart';
import 'package:application_calculadora/shared/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'components/input_task_widget.dart';
import 'components/list_task_widget.dart';
import '../../controller/todo_controller.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  var controller = ToDoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Lista de Tarefas',
        image: Image.asset('assets/images/logo_home.png'),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 24, 17, 40),
            child: InputTaskWidget(
              textController: controller.textController,
              onPressed: () {
                setState(() {
                  controller.addToDo();
                });
              },
              labelText: 'Nova Tarefa',
              textButton: 'ADD',
            ),
          ),
          Expanded(
            child: ListTaskWidget(
              listToDo: controller.listToDo,
              onChanged: (value, index) => setState(() {
                controller.updateStatus(value, index);
              }),
              onRemoved: (index) {
                setState(() {
                  controller.onRemoveTaskOfList(index);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
