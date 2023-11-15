import 'package:flutter/material.dart';
import 'package:clothes_collection_mobile/screens/menu.dart';
import 'package:clothes_collection_mobile/screens/clothlist_form.dart';


class ClothCard extends StatelessWidget {
  final ClothingItem item;

  const ClothCard(this.item, {Key? key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Responsive touch area
  // Area responsive to touch
      onTap: () {
        // Show SnackBar when clicked
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
              content: Text("You pressed the ${item.name} button!")));
        // Navigate to the appropriate route (depending on the button type)
        if (item.name == "Add Product") {
        }
      },
        child: Container(
          // Container to hold Icon and Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}