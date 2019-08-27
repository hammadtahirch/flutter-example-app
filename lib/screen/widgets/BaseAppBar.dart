import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final String title;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0)),
      backgroundColor: Colors.blueGrey,
      leading: new IconButton(
              icon: new Icon(Icons.close, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(null),
            ), 
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}