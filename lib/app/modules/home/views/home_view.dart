import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:shrine_app/app/ui/widgets/app_colors.dart';
import 'package:shrine_app/app/ui/widgets/shopping_item_tile_widget.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 207, 204),
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.search_rounded,
                color: Colors.black,
              )),
          SizedBox(
            width: 5,
          ),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.display_settings_sharp,
                color: Colors.black,
              )),
        ],
        // backgroundColor: Colors.amber,

        title: Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.diamond_sharp,
                  color: Colors.black,
                )),
            Text(
              "SHRINE",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
        leading: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.list,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: GetBuilder<HomeController>(builder: (_) {
                return Wrap(
                  direction: Axis.vertical,
                  children: [
                    for (int i = 0; i < controller.itemsLength; i++)
                      ShoppingCartItemWidget(
                        onPressed: () => controller.shoppingItemAddButtonClicked(i),
                        title: controller.items[i].title,
                        price: controller.items[i].price,
                        imageurl: controller.items[i].imageurl,

                      )
                  ],
                );
              }),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                ),
                color: AppColors.mainBackgroundColor,
              ),
              child: GetBuilder<HomeController>(builder: (_) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: controller.shoppingCartButtonClicked,
                      ),
                    ),
                    for (int i = 0; i < controller.selectedItemslength; i++)
                      controller.SelectedItems[i].imageurl != null
                          ? Image.network(controller.SelectedItems[i].imageurl!,
                        height: 40,
                        width: 40,
                      )
                          : Container(
                        height: 40,
                        width: 40,
                        color: Colors.black,
                      )
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
