import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plants.dart';
import 'package:plant_app/ui/screens/widgets/plant_widget.dart';

class CardPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CardPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.addedToCartPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/add-cart.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your Cart is Empty",
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.addedToCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return PlantWidget(
                              index: index,
                              plantList: widget.addedToCartPlants);
                        }),
                  ),
                  Column(
                    children: [
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Totals",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            r"$110",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Constants.primaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
