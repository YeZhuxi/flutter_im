import 'package:flutter/cupertino.dart';

class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;
  ContactVO({@required this.seationKey,this.name,this.avatarUrl});
}

List<ContactVO> contactData=[
  new ContactVO(
    seationKey: 'A',
    name:'A zhangsan',
    avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&'
        'quality=100&size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff80275c04dde1f1ed5&src='
        'http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg'
  ),
  new ContactVO(
    seationKey:'A',
    name: 'ahuang',
    avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&'
        'quality=100&size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff80275c04dde1f1ed5&src='
        'http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg'
  ),
  new ContactVO(
    seationKey: 'B',
    name: 'bobo',
    avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&'
        'quality=100&size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff80275c04dde1f1ed5&src='
        'http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg'
  )
];