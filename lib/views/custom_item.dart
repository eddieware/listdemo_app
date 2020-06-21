import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  
 const CustomItemList({Key key, this.titulo}) : super(key: key);  
  
  final String titulo;

 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(CupertinoIcons.add_circled),
      title: Text(titulo),
      trailing: Icon(CupertinoIcons.right_chevron),

      
    );
  }
}