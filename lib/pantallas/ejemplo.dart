import 'package:flutter/material.dart';

// 1. ESTO YA NO ES UN STATELESS WIDGET.
// Al usar StatefulWidget, Flutter sabe que esta pantalla tiene "vida".
class MicroTeclado extends StatefulWidget {
  const MicroTeclado({super.key});

  @override
  State<MicroTeclado> createState() => _MicroTecladoState();
}

// Aquí es donde vive la "Memoria" (El Estado) de nuestra pantalla
class _MicroTecladoState extends State<MicroTeclado> {
  
  // 2. NUESTRA VARIABLE DE ESTADO
  // Esta variable guarda lo que el usuario ve en pantalla. Empieza en cero.
  String montoIngresado = "0";

  // 3. LA FUNCIÓN MÁGICA
  void presionarTecla5() {
    // ¡AQUÍ ESTÁ EL SECRETO! 
    // setState le grita a Flutter: "¡Oye, cambió el monto, vuelve a dibujar la pantalla!"
    setState(() {
      if (montoIngresado == "0") {
        montoIngresado = "5"; // Si es 0, lo reemplaza por 5
      } else {
        montoIngresado = montoIngresado + "5"; // Si ya hay números, le pega el 5 al final
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // El texto lee la variable de estado en tiempo real
            Text(
              '\$ $montoIngresado', 
              style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            
            // El botón llama a nuestra función
            ElevatedButton(
              onPressed: presionarTecla5,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: const Text('Presionar la tecla "5"', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}