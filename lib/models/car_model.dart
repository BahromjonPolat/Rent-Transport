import 'package:rent_car/models/category_model.dart';
import 'package:rent_car/models/transport_model.dart';

class Car extends Transport {
  Car(
    String name,
    String type,
    String color,
    String imageUrl,
    double pricePerDay,
    double rating,
    double spendFuel,
    Category category,
    int madeYear,
  ) : super(
          name,
          type,
          color,
          pricePerDay,
          rating,
          spendFuel,
          category,
          imageUrl,
          madeYear,
        );
}
