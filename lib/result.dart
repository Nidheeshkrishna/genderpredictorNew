import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genderpredictor/Chinese_birth_chart.dart';
import 'package:launch_review/launch_review.dart';

class Result extends StatefulWidget {
  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Map data = {};
  int boy = 0;
  int girl = 0;
  String gender;
  Color bgcolor;
  Color bgcolor1;
  Color bgcolor2;
  Color bgcolor3;
  int percentage;
  String image;
  bool Equ = false;

  @override
  Widget build(BuildContext context) {
    //     double dw = MediaQuery.of(context).size.width;
    double dh = MediaQuery.of(context).size.height;
    data = ModalRoute.of(context).settings.arguments;
    boy = data['boy'];
    girl = data['girl'];

    if (boy > girl) {
      gender = "Its a Boy!!";
      image = "boy";
      bgcolor = Colors.blue;
      bgcolor1 = Colors.blue[50];
      bgcolor2 = Colors.blue[300];
      bgcolor3 = Colors.blue[300];
      percentage = (10 - girl) * 10;
      Equ = false;
    } else if (girl > boy) {
      gender = "Its a Girl!!";
      image = "girl";
      bgcolor = Colors.pink;
      bgcolor1 = Colors.pink[50];
      bgcolor2 = Colors.pink[300];
      bgcolor3 = Colors.pink[300];
      percentage = (10 - boy) * 10;
      Equ = false;
    } else {
      image = 'girl';
      gender = "Girl or Boy!";
      bgcolor = Colors.pink;
      bgcolor1 = Colors.pink[50];
      bgcolor2 = Colors.pink[300];
      bgcolor3 = Colors.pinkAccent;
      percentage = 100;
      Equ = true;
    }

    return Scaffold(
        //     appBar: AppBar(

        // backgroundColor: Colors.pink,
        //elevation: 0,
        //title: Text("Ammi's Baby Gender Predictor",
        //style: TextStyle(
        //   fontSize: 20,
        // fontWeight: FontWeight.w700
        //),),
//),
        backgroundColor: bgcolor1,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  alignment: Alignment.center,
                  // width: 200,
                  // height: 80,
                  color: bgcolor,
                  child: Text(
                    "Congratulations!!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: SizedBox(
                          height: 250.0,
                          width: 250.0,
                          child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(bgcolor2),
                              value: 1,
                              backgroundColor: Colors.white,
                              strokeWidth: 18.0))),
                  Positioned(
                    right: 29,
                    top: 29,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/$image.png'),
                      radius: 116,
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: Equ
                    ? Text(
                        "There is an Equal Chance of having,",
                        style: TextStyle(
                          fontSize: 20,
                          color: bgcolor,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    : Text(
                        "There is a $percentage% chance",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: bgcolor,
                        ),
                      ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                color: bgcolor3,
                alignment: Alignment.center,
                child: Text(
                  "$gender",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: dh * .05,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Can you help please ?"),
                        content: Text("Just like the baby, we also need your love and support. Please consider rating our app "),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Can't help now",
                              style: TextStyle(
                                fontSize: 14,
                              ),),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                          ),
                          FlatButton(
                            child: Text("Yes, I'll help",
                              style: TextStyle(
                                fontSize: 16,
                              ),),
                            onPressed: () {
                              LaunchReview.launch(
                                  androidAppId: "com.momsdoctor.amazinggenderpredictor"
                              );
                            },
                          )
                        ],
                      );
                    },
                  );
                },
                child: Card(
                  color: Colors.blueAccent,
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Start Again",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                     context,
                    MaterialPageRoute(builder: (context) =>Chinese_birth_chart()));
                  },
                  child: Card(
                    color: Colors.pinkAccent,
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Chiness calender",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
