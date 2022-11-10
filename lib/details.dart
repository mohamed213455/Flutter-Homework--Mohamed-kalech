import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  //var
  final String image;
  final String description;
  final int price;

  const Details(this.image, this.description, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "Assets/$image",
            width: 500,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Text(
                  "${price.floor().toString()} TND",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text("Acheter"),
                    icon: Icon(Icons.shopping_basket),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
