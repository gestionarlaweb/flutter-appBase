import 'datos_model.dart';

class Escudo {
  String nombre;
  String imagenUrl;
  List<Datos> datos;

  Escudo(this.nombre, this.imagenUrl, this.datos);
  static List<Escudo> items = [
    Escudo(
      'Cal Aguidó',
      'assets/images/esc_aguido.png',
      [
        Datos(1985, 'assets/images/cam_cala.png'),
      ],
    ),
    Escudo(
      'Aquahotel',
      'assets/images/esc_aqua.png',
      [
        Datos(1985, 'assets/images/cam_aqua.png'),
      ],
    ),
    Escudo(
      'CD Blanes',
      'assets/images/esc_blanes.png',
      [
        Datos(1985, 'assets/images/cam_blanes.png'),
      ],
    ),
    Escudo(
      'Costa Brava',
      'assets/images/esc_costa.png',
      [
        Datos(1985, 'assets/images/cam_costa.png'),
      ],
    ),
    Escudo(
      'Girona',
      'assets/images/esc_girona.png',
      [
        Datos(1985, 'assets/images/cam_girona.png'),
      ],
    ),
    Escudo(
      'Juventus Lloret',
      'assets/images/esc_juve.png',
      [
        Datos(1985, 'assets/images/cam_juve.png'),
      ],
    ),
    Escudo(
      'Lloret',
      'assets/images/esc_lloret.png',
      [
        Datos(1985, 'assets/images/cam_lloret.png'),
      ],
    ),
    Escudo(
      'CD Malgrat',
      'assets/images/esc_malgrat.png',
      [
        Datos(1985, 'assets/images/cam_malgrat.png'),
      ],
    ),
    Escudo(
      'Mataró',
      'assets/images/esc_mataro.png',
      [
        Datos(1985, 'assets/images/cam_mataro.png'),
      ],
    ),
    Escudo(
      'Olimpic',
      'assets/images/esc_olimpic.png',
      [
        Datos(1985, 'assets/images/cam_olimpic.png'),
      ],
    ),
    Escudo(
      'Quart',
      'assets/images/esc_quart.png',
      [
        Datos(1985, 'assets/images/cam_quart.png'),
      ],
    ),
    Escudo(
      'Sant Celoni',
      'assets/images/esc_santceloni.png',
      [
        Datos(1985, 'assets/images/cam_santceloni.png'),
      ],
    ),
    Escudo(
      'Vilassar de Mar',
      'assets/images/esc_vilassar_mar.png',
      [
        Datos(1985, 'assets/images/cam_vilassar_mar.png'),
      ],
    ),
  ];
}
