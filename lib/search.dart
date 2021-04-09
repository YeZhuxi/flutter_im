import 'package:flutter/material.dart';
import './common/touch_callback.dart';

class Search extends StatefulWidget{
  @override
  SearchState createState()=>new SearchState();
}

class SearchState extends State<Search>{
  FocusNode focusNode=new FocusNode();

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text){
    return TouchCallback(
      isfeed: false,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.0,
          color: Color(0xffaad19),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchCallback(
                  isfeed: false,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0,right: 10.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0,right: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0,color: Colors.green)
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          focusNode: _requestFocus(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: 'searching',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color:Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text(
                'used searching',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xffb5b5b5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('friends'),
                  _getText('chatting'),
                  _getText('group'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}