class Car {
  String image;
  int price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Car(
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  );
}

List<Car> carList = [
  Car(
    'Images/1.png',
    120,
    'Desayuno',
    'Huevo Frito',
    '100 Cal',
    '500g',
  ),
  Car(
    'Images/2.png',
    185,
    'Desayuno',
    'Tostada',
    '200 Cal',
    '550g',
  ),
  Car(
    'Images/3.png',
    100,
    'Desayuno',
    'Cereal',
    '150 Cal',
    '400g',
  ),
  Car(
    'Images/4.png',
    90,
    'Desayuno',
    'Yogur',
    '120 Cal',
    '350g',
  ),
];
