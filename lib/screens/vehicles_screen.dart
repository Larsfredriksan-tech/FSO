
import 'package:flutter/material.dart';
import '../models/vehicle.dart';

class VehiclesScreen extends StatefulWidget {
  const VehiclesScreen({super.key});

  @override
  State<VehiclesScreen> createState() => _VehiclesScreenState();
}

class _VehiclesScreenState extends State<VehiclesScreen> {
  final List<Vehicle> _vehicles = [
    Vehicle(
      id: '1',
      name: 'Volvo FH16',
      type: 'Lastebil',
      brand: 'Volvo',
      model: 'FH16',
      regNumber: 'AB12345',
      counter: 220000,
      fuelType: 'Diesel',
      nextService: DateTime.now().add(const Duration(days: 30)),
      consumption: 2.4,
    ),
    Vehicle(
      id: '2',
      name: 'CAT 320D',
      type: 'Gravemaskin',
      brand: 'Caterpillar',
      model: '320D',
      regNumber: 'XK98765',
      counter: 5400,
      fuelType: 'Diesel',
      nextService: DateTime.now().add(const Duration(days: 60)),
      consumption: 7.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mine kjøretøy')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _vehicles.length,
        itemBuilder: (context, index) {
          final v = _vehicles[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 1,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Container(
                width: 48, height: 48,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.directions_car, color: Colors.blue),
              ),
              title: Text(v.name),
              subtitle: Text('${v.type} • ${v.regNumber}\nNeste service: '
                  '${v.nextService != null ? _fmtDate(v.nextService!) : '—'}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }

  String _fmtDate(DateTime d) => '${d.day.toString().padLeft(2,'0')}.${d.month.toString().padLeft(2,'0')}.${d.year}';
}
