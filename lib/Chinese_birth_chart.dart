import 'package:flutter/material.dart';
class Chinese_birth_chart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //title: 'Chinese Gender Pridiction';
   return Scaffold(
    resizeToAvoidBottomPadding: false,
     appBar: new AppBar(
       title: new Text('Chinese Gender Pridiction'),
       backgroundColor: Colors.lightBlue,
     ),
    body: Center(
      child: Container(


          child: Column(
              children: <Widget>[
                Expanded(
                  child: new Image.asset('images/chinese_cal.jpg',
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                )



              ]
          ),
        ),


    ),

  );
  }


}

