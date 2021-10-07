import 'package:flutter/material.dart';
import '../models/escudo_model.dart';

class DatosEquipo extends StatefulWidget {
  final Escudo escudo;
  const DatosEquipo({Key? key, required this.escudo}) : super(key: key);

  @override
  _DatosEquipoState createState() => _DatosEquipoState();
}

class _DatosEquipoState extends State<DatosEquipo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.escudo.nombre),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.escudo.imagenUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.escudo.nombre,
              style: const TextStyle(fontSize: 18),
            ),

            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.escudo.datos.length,
                itemBuilder: (BuildContext context, int index) {
                  final datosEquipo = widget.escudo.datos[index];
                  // 9
                  // TOD: Add ingredient.quantity
                  return Column(
                    children: [
                      Text('${datosEquipo.fundacion}'),
                      Image(
                        image: AssetImage(datosEquipo.camisetaUrl),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
