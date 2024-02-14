import 'package:flutter/material.dart';

class ShoppingCartItemWidget extends StatelessWidget {
  ShoppingCartItemWidget({
    super.key,
    this.price,
    this.pk,
    this.title,
    this.imageurl,
    required this.onPressed,
  });

  int? price;
  int? pk;
  String? title;
  String? imageurl;

  void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              imageurl != null
                  ? Image.network(
                imageurl!,
                width: 150,
              )
                  : Text("Image not found!"),
              Text(title ?? "no title"),
              Text("$price\$")
            ],
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
    );
  }
}

