import 'package:flutter/material.dart';

import 'carro.dart';

class telaabastecer extends StatefulWidget {
  const telaabastecer({Key? key}) : super(key: key);

  @override
  _telaabastecerState createState() => _telaabastecerState();
}

class _telaabastecerState extends State<telaabastecer> {
  Carro c = Carro();
  double _abastecimento = 0;

  @override
  Widget build(BuildContext context) {

    void _abastecerCarro() {
      setState(() {
        c.abastecer(_abastecimento);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Abastecimento'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Litros de combustível',
            ),
            onChanged: (value) => _abastecimento = double.parse(value),
          ),
          ElevatedButton(
            onPressed: () {
              _abastecerCarro();
              Navigator.pop(context);
            },
              //await Navigator.pushNamed(context, '/');
            child: Text('ABASTECER'),
          ),
          Text('${c.getTanqueCombustivel()}'),
        ],
      ),
    );
  }
}
