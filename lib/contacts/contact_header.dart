import 'package:flutter/material.dart';
import './contact_item.dart';

class ContactHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ContactItem(titleName: 'add friends',imageName: 'images/icon_addfriend.png',),
        ContactItem(titleName: 'group chatting room',imageName: 'images/icon_groupchat.png',)
      ],
    );
  }
}