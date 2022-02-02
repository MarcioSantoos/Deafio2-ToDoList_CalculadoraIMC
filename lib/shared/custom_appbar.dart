import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String title;
  final Image image;
  final List<Widget>? actions;
  const CustomAppBar({Key? key, required this.title, required this.image, this.actions,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 25),
            child: image,
          ),
          Text(title),
        ],
      ),
      actions: actions,
    );
  }
}
