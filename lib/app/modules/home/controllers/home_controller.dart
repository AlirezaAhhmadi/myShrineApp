
import 'package:get/get.dart';
import 'package:shrine_app/app/data/model/shopping_item_model.dart';
import 'package:shrine_app/app/routes/app_pages.dart';




class HomeController extends GetxController {
  void shoppingCartButtonClicked() {
    Get.toNamed(Routes.SHOPPINGCART);
  }

  //TODO: Implement HomeController

  static HomeController get to => Get.find();

  late List<ShoppingItemModel> items;

  int get itemsLength => items.length;

  int get totalSelectedItemPrices =>
      SelectedItems.map((e) => (e.price ?? 0) * (e.quantity ?? 0))
          .toList()
          .fold(0, (previousValue, element) => previousValue + element);

  int get selectedItemslength => SelectedItems.length;

  List<ShoppingItemModel> get SelectedItems {
    return items.where((element) => (element.quantity ?? 0) > 0).toList();
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    items = [
      ShoppingItemModel(
        imageurl:
        "https://storage.torob.com/backend-api/base/images/Tn/Gu/TnGu_-6l-Qxx9Ylo.png_/216x216.jpg",
        price: 1000,
        title: "iPhone 12",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://storage.torob.com/backend-api/base/images/Tn/Gu/TnGu_-6l-Qxx9Ylo.png_/216x216.jpg",
        price: 200,
        title: "iPhone 13",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://storage.torob.com/backend-api/base/images/Tn/Gu/TnGu_-6l-Qxx9Ylo.png_/216x216.jpg",
        price: 120,
        title: "iPhone 9",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://storage.torob.com/backend-api/base/images/Tn/Gu/TnGu_-6l-Qxx9Ylo.png_/216x216.jpg",
        price: 50,
        title: "iPhone 6",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://media.croma.com/image/upload/v1662655728/Croma%20Assets/Communication/Mobiles/Images/261978_zs5j6h.png",
        price: 1900,
        title: "iPhone 14",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://m.media-amazon.com/images/I/61lKQWyMdDL._AC_UF1000,1000_QL80_.jpg",
        price: 1100,
        title: "iPhone 14 Pro",
        quantity: 0,
      ),
      ShoppingItemModel(
        imageurl:
        "https://iranicall.com/wp-content/uploads/2022/09/Apple-iPhone-14-Pro-iPhone-14-Pro-Max-deep-purple-220907_inline.jpg.large_2x.jpg",
        price: 2000,
        title: "iPhone 14 Pro max",
        quantity: 0,
      ),
    ];
    update(items);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  shoppingItemAddButtonClicked(int i) {
    items[i].quantity = 1 + (items[i].quantity ?? 0);
    update();
  }
}
