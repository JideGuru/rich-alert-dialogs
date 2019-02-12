import 'package:flutter/material.dart';
import 'package:sweet_alert_dialogs/sweet_alert_dialogs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sweet Alert Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Sweet Alert Dialog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is to test the rich alert dialog',
            ),

            RaisedButton(
              color: Colors.green,
              child: Text(
                "Success",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return RichAlertDialog(
                        alertTitle: richTitle("Success"),
                        alertSubtitle: richSubtitle("This is a Sucess alert"),
                        alertType: RichAlertType.SUCCESS,
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                          FlatButton(
                            child: Text("Cancel"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                        ],
                      );
                    });
              },
            ),
            RaisedButton(
              color: Colors.yellow.shade800,
              child: Text(
                "Warning",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return RichAlertDialog(
                        alertTitle: richTitle("Warning"),
                        alertSubtitle: richSubtitle("This is a warning alert"),
                        alertType: RichAlertType.WARNING,
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                          FlatButton(
                            child: Text("Cancel",),
                            onPressed: (){Navigator.pop(context);},
                          ),
                        ],
                      );
                    });
              },
            ),
            RaisedButton(
              color: Colors.red,
              child: Text(
                "Error",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return RichAlertDialog(
                        alertTitle: richTitle("Error"),
                        alertSubtitle: richSubtitle("This is a Error alert"),
                        alertType: RichAlertType.ERROR,
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                          FlatButton(
                            child: Text("Cancel"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                        ],
                      );
                    });
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "Info",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return RichAlertDialog(
                        alertTitle: richTitle("Info"),
                        alertSubtitle: richSubtitle("This is a Info alert"),
                        alertType: RichAlertType.INFO,
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                          FlatButton(
                            child: Text("Cancel"),
                            onPressed: (){Navigator.pop(context);},
                          ),
                        ],
                      );
                    });
              },
            )
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          /// Use case scenario for the rich alert dialog
//          showDialog(
//              context: context,
//              builder: (BuildContext context) {
//                return RichAlertDialog(
//                  alertTitle: richTitle("Alert title"),
//                  alertSubtitle: richSubtitle("Subtitle"),
//                  alertType: RichAlertType.WARNING,
//                  actions: <Widget>[
//                    Text("hello"),
//                    Text("its me"),
//                  ],
//                );
//              });
//        },
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
