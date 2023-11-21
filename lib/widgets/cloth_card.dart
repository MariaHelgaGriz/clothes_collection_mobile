import 'package:clothes_collection_mobile/screens/list_product.dart';
import 'package:clothes_collection_mobile/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:clothes_collection_mobile/screens/menu.dart';
import 'package:clothes_collection_mobile/screens/clothlist_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


class ClothCard extends StatelessWidget {
  final ClothingItem item;

  const ClothCard(this.item, {Key? key}); // Constructor

@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: Color(0xFFF8B3CA),
      child: InkWell(
        // Responsive touch area
  // Area responsive to touch
      onTap: () async {
        // Show SnackBar when clicked
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
              content: Text("You pressed the ${item.name} button!")));
        // Navigate to the appropriate route (depending on the button type)
        if (item.name == "Add Product") {
        }
        else if (item.name == "View Products") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductPage()));
      }
else if (item.name == "Logout") {
        final response = await request.logout(
            // TODO: Change the URL to your Django app's URL. Don't forget to add the trailing slash (/) if needed.
            "http://<YOUR_DJANGO_APP_URL>/auth/logout/");
        String message = response["message"];
        if (response['status']) {
          String uname = response["username"];
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message Good bye, $uname."),
          ));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message"),
          ));
        }
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
                  color: Color.fromARGB(255, 59, 26, 57),
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