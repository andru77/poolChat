import 'package:flutter/material.dart';


class ReadedMessage extends StatelessWidget {
  String name = 'Missandei';
  String message = 'Dracarys!!';
  String avatarPath = 'assets/img/missandei.jpg';
  String type = 'red';
  var icon;
  ReadedMessage(this.name,this.message,this.avatarPath,this.type);

  @override
  Widget build(BuildContext context) {
  
    final chatAvatar = Container(
      margin: EdgeInsets.only(
        top:10.0,
        left: 10.0,
        bottom: 10.0
      ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
           fit: BoxFit.cover,
           image:AssetImage(this.avatarPath)
        ) 
      ),
    );    

    final messageSender = Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
        top: 0.0,
        left: 0.0
      ),
      child: Text(
             this.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16
              ),
           ),
    );

    final message = Container(
      margin: EdgeInsets.only(
        bottom:2.0,
        top: 0.0,
      ),
      child: Row(
        children: <Widget>[
          Container(
             margin: EdgeInsets.only(
               left: 4.0
             ),
             child:Icon(
             Icons.looks_one,
               color: Colors.lightBlue,
               size: 15,
             ),
           ),
           Container(
             margin: EdgeInsets.only(
              left: 4.0
             ),
             child: Text(
              this.message,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 14
              ),
             )
           ),           
        ],
      )
      
    );
    
    final messageDetails = Container(
      margin: EdgeInsets.only(
        left: 10.0
      ),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           messageSender,
           message
         ],
      ),
    );

    final messageIcon = Container(
      margin: EdgeInsets.only(
        right: 8.0
      ),
      child: Icon(
        Icons.mail,
        size: 30,
        color: Color.fromRGBO(218, 69, 85  ,1),
      ),
    );

    final readedIcon = Container(
      margin: EdgeInsets.only(
        right: 8.0
      ),
      child: Icon(
        Icons.mail,
        size: 30,
        color: Colors.grey,
      ),
    );

    final avatarSection = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        chatAvatar,
        messageDetails
      ],
    );

    switch (this.type) {
      case 'red':
        icon = messageIcon;
        break;
      default:
        icon = readedIcon;
      break;
    }
    return 
     Container(
       margin: EdgeInsets.only(
        top: 1.0,
        left: 5.0,
        right: 5.0
      ),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            avatarSection,
            icon
          ],
        ),
      ),
     );
  }
}