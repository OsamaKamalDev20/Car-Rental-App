//We will create a model class for the car rental app. This class will contain the car data and categories.
class Car {
  final String name;
  final String brand;
  final String price;
  final String discountPrice;
  final String image;
  final double rating;
  final int engine;
  final int speed;
  final int fuel;
  final int horsePower;
  final int torque;
  final int bootSpace;
  final bool favorites;

  Car({
    required this.name,
    required this.brand,
    required this.price,
    required this.discountPrice,
    required this.image,
    required this.rating,
    required this.engine,
    required this.speed,
    required this.fuel,
    required this.horsePower,
    required this.torque,
    required this.bootSpace,
    this.favorites = false,
  });
}

//We will also create a list of car data and categories.
final List<Car> cars = [
  Car(
    name: "Honda Civic Oriel 1.8 CVT",
    brand: "Honda",
    price: "6,500,000",
    discountPrice: "5,800,000",
    image: "assets/car-rental/hondaCivic.png",
    rating: 4.1,
    engine: 1500,
    speed: 220,
    fuel: 47,
    horsePower: 176,
    torque: 220,
    bootSpace: 409,
    favorites: true,
  ),
  Car(
    name: "Toyota Corolla Altis 1.6 X",
    brand: "Toyota",
    price: "7,549,000",
    discountPrice: "7,159,000",
    image: "assets/car-rental/toyotaCorollaAltis.png",
    rating: 4.5,
    engine: 1600,
    speed: 240,
    fuel: 55,
    horsePower: 120,
    torque: 154,
    bootSpace: 470,
    favorites: false,
  ),
  Car(
    name: "Toyota Corolla Cross 1.8 HEV",
    brand: "Toyota",
    price: "9,849,000",
    discountPrice: "8,999,000",
    image: "assets/car-rental/toyotaCross.png",
    rating: 4.6,
    engine: 1800,
    speed: 180,
    fuel: 36,
    horsePower: 96,
    torque: 142,
    bootSpace: 487,
    favorites: false,
  ),
  Car(
    name: "Hyundai Tucson AWD Ultimate",
    brand: "Hyundai",
    price: "8,909,000",
    discountPrice: "8,709,000",
    image: "assets/car-rental/hyundaiTucson.png",
    rating: 4.9,
    engine: 2000,
    speed: 220,
    fuel: 62,
    horsePower: 155,
    torque: 196,
    bootSpace: 513,
    favorites: true,
  ),
  Car(
    name: "KIA Sportage AWD 2.0L",
    brand: "KIA",
    price: "8,720,000",
    discountPrice: "8,320,000",
    image: "assets/car-rental/kiaSportage.png",
    rating: 4.7,
    engine: 2000,
    speed: 240,
    fuel: 62,
    horsePower: 155,
    torque: 196,
    bootSpace: 885,
    favorites: false,
  ),
  Car(
    name: "Nissan Dayz Semi Hybrid",
    brand: "Nissan",
    price: "4,200,000",
    discountPrice: "4,075,000",
    image: "assets/car-rental/nisanDayzHighwayStar.png",
    rating: 5.0,
    engine: 660,
    speed: 180,
    fuel: 35,
    horsePower: 48,
    torque: 56,
    bootSpace: 150,
    favorites: true,
  ),
  Car(
    name: "Daihatshu Mira ES G-Package",
    brand: "Daihatsu",
    price: "3,850,000",
    discountPrice: "3,550,000",
    image: "assets/car-rental/daihatsuMira.png",
    rating: 4.9,
    engine: 660,
    speed: 140,
    fuel: 30,
    horsePower: 48,
    torque: 57,
    bootSpace: 250,
    favorites: true,
  ),
  Car(
    name: "Changan Oshan X7 FutureSense",
    brand: "Changan",
    price: "8,899,000",
    discountPrice: "8,599,000",
    image: "assets/car-rental/changanOshanX7.png",
    rating: 4.8,
    engine: 1500,
    speed: 220,
    fuel: 55,
    horsePower: 185,
    torque: 300,
    bootSpace: 1407,
    favorites: true,
  ),
  Car(
    name: "MG HS PHEV",
    brand: "MG",
    price: "9,899.000",
    discountPrice: "9,499,000",
    image: "assets/car-rental/mgHSPHEV.png",
    rating: 4.0,
    engine: 1500,
    speed: 190,
    fuel: 37,
    horsePower: 160,
    torque: 250,
    bootSpace: 448,
    favorites: false,
  ),
];

// Car Data categories explanation of above class
final brands = [
  "Honda",
  "Hyundai",
  "KIA",
  "Nissan",
  "Daihatsu",
  "Changan",
  "Suzuki",
  "MG"
];
final brandsImages = [
  "assets/car-rental/hondaLogo.png",
  "assets/car-rental/hyundaiLogo.png",
  "assets/car-rental/kiaLogo.png",
  "assets/car-rental/nissanLogo.png",
  "assets/car-rental/daihatsuLogo.png",
  "assets/car-rental/changanLogo.png",
  "assets/car-rental/suzukiLogo.png",
  "assets/car-rental/mgLogo.png",
];
final categories = [
  "All",
  "Family Cars",
  "Small Cars",
  "Big Cars",
  "1000cc Cars",
  "1300cc Cars",
  "660cc Cars",
  "Japanese Cars",
  "Diesel Cars",
  "Electric Cars",
  "Hybrid Cars"
];
