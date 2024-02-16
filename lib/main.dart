import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Movilidad',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aplicación de Movilidad'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ingresa tus Datos',
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 275, // Ancho
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Redondear los bordes
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 275, // Ancho deseado para los campos de texto
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Contrseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Redondear los bordes
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar la lógica para manejar el inicio de sesión
                },
                child: Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

