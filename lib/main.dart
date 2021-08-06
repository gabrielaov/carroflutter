import 'package:carroflutter/telaabastecer.dart';
import 'package:flutter/material.dart';
import 'carro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      'telaabastecer' : (context) => telaabastecer(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Carro c = Carro();
  double _kmRodados = 0;


  @override
  Widget build(BuildContext context) {

    void _locomoverCarro(){
      setState(() {
        c.locomoverCarro(_kmRodados);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Painel do Carro'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Odômetro: ${c.getKmRodados()} KM',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Combustível disponível: ${c.getTanqueCombustivel()} L',
            style: TextStyle(fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (_locomoverCarro),
                child: Text("LOCOMOVER CARRO", style: TextStyle(fontSize: 18),),
              ),
              Text('  '),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'telaabastecer'),
                child: Text("ABASTECER", style: TextStyle(fontSize: 18),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
