import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Tarjeta de total Gastos
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Total Gastos hoy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,                        
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8.0),
                    Text(
                      '\$14.250',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    const SizedBox (height: 32),

                    // 2. Titulo de la lista
                    const Text(
                      'Gastos de hoy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8.0),
                    
                    Text(
                      '\$14.250',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                },
                child: const Text('Agregar gasto'),
              ),
            ],
          ),
        ),
      )
      appBar: AppBar(
        title: const Text('Gastos App'),
      ),
      body: const Center(
        child: Text('Bienvenido a la aplicación de gastos'),
      ),
    );
  }
}