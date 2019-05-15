import 'package:flutter/material.dart';
import 'readedmessage.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 80
      ),
      child: ListView(
       scrollDirection: Axis.vertical,
       children: <Widget>[
        ReadedMessage('Missadei','Dracarys!!!','assets/img/missandei.jpg','red'),
        ReadedMessage('Tyrion','Varys la quiere matar','assets/img/tyrion.jpg','red'),
        ReadedMessage('Sobrino jonny','Estoy embarazado','assets/img/jon.jpg', 'grey'),
        ReadedMessage('Cersei','Era joda no quiero guerra','assets/img/cersei.jpg', 'red'),
        ReadedMessage('Varys','Tienes hambre mi reina?','assets/img/varys.jpg', 'red'),
        ReadedMessage('Daario','Cuando vuelves?','assets/img/dario.jpg', 'red'),
        ReadedMessage('Sonsa','Ya se la verdad de jon.','assets/img/sansa.jpg', 'grey'),
        ReadedMessage('Gusano gris','Khalessi estoy triste','assets/img/gusano.jpg', 'grey'),
      ],
     )     
    );
  }

}