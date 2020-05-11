import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
       children: <Widget>[
         Logo(),
         Container(
           margin: EdgeInsets.all(20),
           decoration: BoxDecoration(
           color: Colors.white.withOpacity(0.8),
           borderRadius: BorderRadius.circular(25),
           ),
           child: Column(children: <Widget>[
             SizedBox(height: 5,),
             Text(
               "LALALAL",
               style: TextStyle(
                 color: Theme.of(context).primaryColor,
                 fontSize: 40,
                 fontFamily: "Big Shoulders Diplay",
                 ),
               textAlign: TextAlign.center, 
              ),
              SizedBox(height: 20,),

              LoadingButton1(
                busy: false,
                func: (){},
                text: "CALCULAR NOVAMENTE",
                invert: true,)
            ],
            ),
         ),
             
       
         Input( ctrl: _gasCtrl, label: "Gasolina",),
         Input( ctrl: _alcCtrl,label: "Alcool",),
         LoadingButton1(
           busy: true,
           func: (){},
           text: "CALCULAR",
           invert: false,)
       ],
      ),
    );
  }
}