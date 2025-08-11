
class Vehicle {
  final String id;
  final String name;
  final String type;
  final String brand;
  final String model;
  final String regNumber;
  final int counter;
  final String fuelType;
  DateTime? nextService;
  double? consumption;

  Vehicle({
    required this.id,
    required this.name,
    required this.type,
    required this.brand,
    required this.model,
    required this.regNumber,
    required this.counter,
    required this.fuelType,
    this.nextService,
    this.consumption,
  });
}
