import 'package:myapp/constants.dart';
import 'package:myapp/model/car.dart';
import 'package:flutter/material.dart';

import '../../Common/card_list.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen(this.car, {super.key});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // for image
          Image.asset(
            "Images/map.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // for back button ,name and menu icon
          carDetailAppbar(context),
          Positioned(
            left: 10,
            right: 10,
            bottom: 25,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  margin: const EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //
                  child: Column(
                    children: [
                      cardInformation(),
                      // for whtite line,
                      const Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                      Row(
                        children: [
                          // for driver image
                          Image.asset(
                            "Images/driver.png",
                            height: 150,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              // for driver name address and more
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Row(),
                              const SizedBox(
                                height: 12,
                              ),
                              // for call and book now button,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: cardColor,
                                    ),
                                    child: const Text(
                                      "Buy",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ),
                // for car image
                Positioned(
                  right: 60,
                  child: Hero(
                    tag: car.image,
                    child: Image.asset(
                      car.image,
                      height: 115,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column cardInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\$${car.price.toString()}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromARGB(255, 31, 31, 31),
          ),
        ),
        const Text(
          "precio",
          style: TextStyle(
              color: Color.fromARGB(255, 48, 48, 48),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarItems(name: "Tipo", value: car.brand, textColor: Colors.black),
            CarItems(name: "Comida", value: car.model, textColor: Colors.black),
            CarItems(name: "Calorias", value: car.co2, textColor: Colors.black),
            CarItems(
                name: "Gramos", value: car.fuelCons, textColor: Colors.black),
          ],
        ),
      ],
    );
  }

  SafeArea carDetailAppbar(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 32, 32, 32),
          ),
        ),
        const Text(
          "Car Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromARGB(255, 32, 32, 32),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 31, 31, 31),
          ),
        ),
      ],
    ));
  }
}
