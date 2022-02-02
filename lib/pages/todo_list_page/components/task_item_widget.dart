import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final bool completed;
  final Function(bool?) onChanged;
  final Function(DismissDirection)? onDismissed;
  const TaskItemWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.onChanged,
    this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      onDismissed: onDismissed,
      child: CheckboxListTile(
        value: completed,
        onChanged: onChanged,
        title: Text(
          title,
          style: TextStyle(
              decoration:
                  completed ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        secondary: Icon(completed ? Icons.check_circle : Icons.error),
      ),
      background: Container(
        alignment: const Alignment(-0.9, 0),
        color: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      direction: DismissDirection.startToEnd,
      confirmDismiss: (DismissDirection direction) async {
        return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const Text('Tem certeza que deseja apagar?'),
              actions: [
                TextButton(
                  child: const Text('Apagar'),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop(false),
                )
              ],
            );
          },
        );
      },
    );
  }
}
