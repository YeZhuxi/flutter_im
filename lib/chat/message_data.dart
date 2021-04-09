enum  MessageType{SYSTEM,PUBLIC,CHAT,GROUP}

class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;


  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);

}

List<MessageData> messageData=[
  new MessageData(
    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&'
        'size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff80275c04dde1f1ed5&src='
        'http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg',
    'yixiuge',
    'suddenly',
    new DateTime.now(),
    MessageType.CHAT
  ),
  new MessageData(
    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&'
        'size=b4000_4000&sec=1594286915&di=2652aa1a4fe4eff80275c04dde1f1ed5&src='
        'http://i0.hdslb.com/bfs/article/3370e28317bf5ff00366c510cc980729e0ac7939.jpg',
    'duolaameng',
    'cat',
    new DateTime.now(),

    MessageType.CHAT
  ),

];