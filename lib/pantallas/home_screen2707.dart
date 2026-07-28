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

                    SizedBox(height: 16),
                    
                    // 3. Lista de gastos
                    Expanded(
                      child: ListView(
                        children: [
                          _GastosCard(icono: '☕', nombre: 'Starbucks', categoria: 'Comidas & Bebidas', precio: '$ 6.50', hora: '9:15 AM'),
                          _GastosCard(icono: '🚕', nombre: 'Uber', categoria: 'Transporte', precio: '\$2.75', hora: '11:30 AM'),
                          _GastosCard(icono: '🍽️', nombre: 'Almuerzo', categoria: 'Comidas & Bebidas', precio: '\$5.25', hora: '1:30 PM'),
                        ],
                    )

                  ],
                ),
              ),

              // 4. Botón para agregar gasto
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 56,
              child: FloatingActionButton(
                onPressed: () {
                  // Acción al presionar el botón
                },
                backgroundColor: salmonColor,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                label: const Text(
                  '+ Agregar gasto',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),                
              ),
            ],
          ),
        ),
      )
      
    );
  }
}

class _GastosCard extends StatelessWidget {
  final String icono;
  final String nombre;
  final String categoria;
  final String precio;
  final String hora;

  const _GastosCard({
    required this.icono,
    required this.nombre,
    required this.categoria,
    required this.precio,
    required this.hora,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Text(
          icono,
          style: const TextStyle(fontSize: 24),
        ),
        title: Text(nombre),
        subtitle: Text(categoria),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(precio, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(hora, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}