import 'package:app_base/screens/datos_equipo.dart';
import 'package:app_base/models/escudo_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: Escudo.items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DatosEquipo(escudo: Escudo.items[index]);
                  }));
                },
                child: buildRecipeCard(Escudo.items[index]));
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Escudo escudo) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(height: 150, width: 150, image: AssetImage(escudo.imagenUrl)),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            escudo.nombre,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}
