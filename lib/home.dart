import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleTranslator translator= GoogleTranslator();
  String txt= 'The Google APIs package exposes dozens of Google services that you can use from Dart projects.';
  late String output;
  void translatehi(){
    translator.translate(txt,  to: "hi").then(( output) {

      print(output);
      setState((){
      txt=output.toString();
      });
    });
  }
  void translateen(){
    translator.translate(txt,  to: "en").then(( output) {

      print(output);
      setState((){
        txt=output.toString();
      });
    });
  }
  void translatefr(){
    translator.translate(txt,  to: "fr").then(( output) {

      print(output);
      setState((){
        txt=output.toString();
      });
    });
  }
  void translateth(){
    translator.translate(txt,  to: "th").then(( output) {

      print(output);
      setState((){
        txt=output.toString();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(alignment: Alignment.center,
                  child: Text(txt)),
              ElevatedButton(onPressed: (){
               translatehi();
              }, child: Text('Hindi')),
              ElevatedButton(onPressed: (){
             translateen();
              }, child: Text('English'),
              ),
              ElevatedButton(onPressed: (){
                translatefr();
              }, child: Text('French'),
              ),
              ElevatedButton(onPressed: (){
                translateth();
              }, child: Text('Thai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
