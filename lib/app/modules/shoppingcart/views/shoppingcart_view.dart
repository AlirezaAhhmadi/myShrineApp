import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shrine_app/app/modules/home/controllers/home_controller.dart';
import 'package:shrine_app/app/ui/widgets/app_colors.dart';
import 'package:shrine_app/app/ui/widgets/shopping_cart_widget.dart';

import '../controllers/shoppingcart_controller.dart';

class ShoppingcartView extends GetView<ShoppingcartController> {
  const ShoppingcartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_outlined)),
            Text("CART"),
            SizedBox(
              width: 30,
            ),
            Text("ITEMS")
          ]),
          Expanded(
            child: GetBuilder<HomeController>(builder: (logic) {
              return ListView(
                children: [
                  for (int i = 0; i <
                      HomeController.to.selectedItemslength; i++)
                    ShoppingCartItemsList(
                      quantity: HomeController.to.SelectedItems[i].quantity,
                      imageUrl: HomeController.to.SelectedItems[i].imageurl,
                      price: HomeController.to.SelectedItems[i].price,
                      title: HomeController.to.SelectedItems[i].title,
                      onDeleted: () =>
                          controller.shoppingItemRemovedButtonClicked(i),
                    ),
                ],
              );
            }),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 30),
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(fontSize: 20),
                      ),
                      GetBuilder<HomeController>(builder: (_) {
                        return Text(
                          "${_.totalSelectedItemPrices}",
                          style: TextStyle(fontSize: 40),
                        );
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal :"),
                      Text("\$156.00"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping :"),
                      Text("\$20.00"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax :"),
                      Text("\$15.00"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "CLEAR CART",
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(100, 35)),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

