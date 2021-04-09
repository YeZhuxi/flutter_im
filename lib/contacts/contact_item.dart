import 'package:flutter/material.dart';
import './contact_vo.dart';

class ContactItem extends StatelessWidget{
  final ContactVO item;
  final String titleName;
  final String imageName;
  ContactItem({this.item,this.titleName,this.imageName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffd9d9d9),
          )
        ),
      ),
      height: 52.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          imageName==null
          ?Image.network(
            item.avatarUrl!=''
                ?item.avatarUrl
                :'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image'
                '&quality=100&size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff'
                '80275c04dde1f1ed5&src=http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg',
            width: 36.0,
            height: 36.0,
            scale: 0.9,
          )
              :Image.asset(
            imageName,
            width: 36.0,
            height: 36.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Text(
              titleName==null?item.name??'temporal':titleName,
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff353535),
              ),
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}