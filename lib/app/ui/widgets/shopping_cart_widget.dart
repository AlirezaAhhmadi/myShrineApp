import 'package:flutter/material.dart';

class ShoppingCartItemsList extends StatelessWidget {
  ShoppingCartItemsList({
    super.key,
    this.quantity,
    this.price,
    this.title,
    this.imageUrl,
    required this.onDeleted,
    // this
  });

  int? quantity;
  int? price;
  String? title;
  String? imageUrl;

  void Function() onDeleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 40),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: IconButton(
                    onPressed: onDeleted,
                    icon: Icon(Icons.remove_circle_outline)),
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: imageUrl != null
                      ? Image.network(imageUrl!)
                      : Container(color: Colors.amber)),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 50, 0, 0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Quantity: $quantity"),
                        Text("$price\$"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          title ?? "",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 20,
          thickness: 2.5,
          indent: 80,
        ),
      ],
    );
  }
}
