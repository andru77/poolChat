import 'package:flutter/material.dart';

class PoolChatAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    final appBarIcon = Container(
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(
        top: 28.0
      ),
      child: InkWell(
         onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Navegando'),
          )
        );
      },  
        child: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
    
    final appBarPhoto = Container(
      margin: EdgeInsets.only(
        top: 28.0,
        right: 5.0
      ),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
           fit: BoxFit.cover,
           image:AssetImage('assets/img/dany.jpg')
        ) 
      ),
    );
    
    final appBarBanner = Container(
      height:100.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/banner.jpg')
        ),
        borderRadius: BorderRadius.only(
           bottomLeft: Radius.elliptical(300, 5),
           bottomRight: Radius.elliptical(300, 5)
         ) 
      ),
    );

    final appbar = Container(
       height: 100.0,
       padding: EdgeInsets.only(
         top: 20.0,
       ),
       decoration: BoxDecoration(
        color: Color.fromRGBO(41, 145, 210, 70),
         borderRadius: BorderRadius.only(
           bottomLeft: Radius.elliptical(300, 5),
           bottomRight: Radius.elliptical(300, 5)
         )         
       ),
       child: Center(
         child: Text(
           'PoolChat',
           style: TextStyle(
             color: Colors.white,
             fontSize: 25.0,
             fontWeight: FontWeight.bold,
             fontFamily: 'Oswald'
           ),
         ),
       )
    );

    return Container(
      height: 100.0,
      child: Stack(
        children: <Widget>[
          appBarBanner,
          appbar,
          Align(
            alignment: Alignment.centerLeft,
            child: appBarIcon,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: appBarPhoto,
          )   
        ],
      ),  
    );       
      
  }

}