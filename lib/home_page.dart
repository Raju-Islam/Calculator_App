import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,calculate=0;

  final TextEditingController t1=new TextEditingController(text: "0");
  final TextEditingController t2=new TextEditingController(text: "0");
  void add(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      calculate=num1+num2;
    });
  }
  void sub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      calculate=num1-num2;
    });
  }
  void mul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      calculate=num1*num2;

    });
  }
  void div(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      calculate=num1~/num2 .toDouble() ;
    });
  }
  void clear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      if (calculate == calculate) {
        calculate=0;
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Center(child: new Text("Calculator",style: new TextStyle(
          fontSize: 28,
        ),)),

      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output:$calculate",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.purple),),
            new Padding(padding: const EdgeInsets.only(top: 15)),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Enter number1"
              ),
              controller: t1,
              keyboardType: TextInputType.number,
            ),
            new Padding(padding: const EdgeInsets.only(top: 10),),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Enter number2"
              ),
              controller: t2,
              keyboardType: TextInputType.number,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.00)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  color: Colors.white54,
                  splashColor: Colors.purple,
                  onPressed: add,
                ),
                new MaterialButton(
                  child: new Text("-",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  color: Colors.white54,
                  splashColor: Colors.purple,
                  onPressed: sub,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  color: Colors.white54,
                  splashColor: Colors.purple,
                  onPressed:mul,
                ),
                new MaterialButton(
                  child: new Text("/",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  color: Colors.white54,
                  splashColor: Colors.purple,
                  onPressed: div,
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 15)),
            new MaterialButton(

              child: new Text("CLEAR",style: new TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              color: Colors.white54,
              splashColor: Colors.red,
              onPressed: clear,
            )

          ],
        ),

      ),
      ),

    );
  }
}
