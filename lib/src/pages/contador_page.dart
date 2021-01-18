import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 17);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de clicks:', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
        ],
      )),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(
            Icons.exposure_zero,
            color: Colors.purple[50],
            size: 24.0,
          ),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
          child: Icon(
            Icons.remove,
            color: Colors.purple[50],
            size: 24.0,
          ),
          onPressed: _quitar,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.purple[50],
              size: 24.0,
            ),
            onPressed: _agregar),
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _quitar() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
