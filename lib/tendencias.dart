import 'package:flutter/material.dart';
import 'package:flutter_application_2/opciones.dart';



class MyTe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTrendsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyTrendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tendencias de Panaderías'),
        backgroundColor: Color(0xFFE6B08B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
       onPressed: () {
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MyOpciones()));
          },
        ),
      ),
      body: TrendList(),
    );
  }
}

class TrendList extends StatelessWidget {
  final List<String> trendingBakeries = [
    'Panadería Dota',
    'Dulces DYRROTH',
    'EL DOMINGO FINAL DE LOL',
    'Rincón del Pan',
    'PasE FLUTTER',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trendingBakeries.length,
      itemBuilder: (context, index) {
        return TrendCard(bakeryName: trendingBakeries[index]);
      },
    );
  }
}

class TrendCard extends StatelessWidget {
  final String bakeryName;

  TrendCard({required this.bakeryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(Icons.local_cafe),
        title: Text(bakeryName),
        subtitle: Text('Descubre las delicias de ${bakeryName.toLowerCase()}'),
        onTap: () {
          // Agrega aquí la lógica para manejar el clic en la panadería específica
          print('Clic en ${bakeryName}');
        },
      ),
    );
  }
}

