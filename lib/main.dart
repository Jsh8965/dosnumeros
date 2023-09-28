import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  //String saludo = "Hola";

  var myNameController = TextEditingController();
  var myNameController2 = TextEditingController();
  void mostrarSaludo() {
    setState(() {

      //saludo = myNameController.text.toString();

      int num1= int.parse(myNameController.text);
      int num2= int.parse(myNameController2.text);

    int suma= num1+num2;
    int resta= num1-num2;
    int multiplicacion= num1*num2;
    double division= num1/num2;

    print(suma);
    print(resta);
    print(multiplicacion);
    print(division);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Campos de texto"),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(label: Text("Ingrese su numero")),
                  controller: myNameController,
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(label: Text("Ingrese su numero")),
                  controller: myNameController2,
                )),
            MaterialButton(
              onPressed: mostrarSaludo,
              child: Text("Calcular", style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,
            ),
            //Text("$saludo"),
            //Text(),

          ],
        ));
  }
}
