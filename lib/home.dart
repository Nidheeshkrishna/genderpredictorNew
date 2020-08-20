import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool english = false;
  
@override
void initState() { 
  super.initState();
}

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Visibility(
          visible: true,
                  child: SafeArea(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        
                        Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
              child: Card(
                color: Colors.deepOrangeAccent,
                child: Column(
                  children: <Widget>[

                    Text("Disclaimer",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    )
                    
                    ,),
                    SizedBox(height: 8,),
                    Text(
                      "This Application is for entertainment purpose only and all the information provided is for playfulness. This does not substitute for advice provided by a doctor or other qualified health care professional. Do not use this information contained here in for diagnosis health or diagnosis the gender of embryo/fetus. Please consult with a doctor or healthcare professional for medical advice. User is solely responsible for use of any information provided by this app and please use at your own risk",
                      style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                      
                      ),
                      textAlign: TextAlign.center,
                      ),
SizedBox(height: 22,),
                      FlatButton(
                        color: Colors.blue,
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/questions');
                        },
                         padding: EdgeInsets.fromLTRB(22, 12, 22, 12),
                        child: Text("I Accept",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),),
                        ),
                        SizedBox(height: 22,),
                  ],
                ),
                
                elevation: 10,
                ),
            ),
          ),
          
                      ],
                    ),
                  ),
        ),
      ),
                   
                    );
                  }
  void warningBadge(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Test Message"),
    content: Text("Message content is here"),
    actions: <Widget>[
      FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Got it"))
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
 

}