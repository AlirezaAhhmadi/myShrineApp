import 'package:get/get.dart';
import 'package:shrine_app/app/modules/home/controllers/home_controller.dart';

class ShoppingcartController extends GetxController {


  //TODO: Implement ShoppingcartController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
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


  shoppingItemRemovedButtonClicked(int i) {
    HomeController.to.SelectedItems[i].quantity =
        (HomeController.to.SelectedItems[i].quantity ?? 0) - 1;
    HomeController.to.update();
  }

}
