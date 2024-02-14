class ShoppingItemModel{
  ShoppingItemModel({
    this.ID,
    this.price,
    this.title,
    this.imageurl,
    this.quantity=0,
  });

  int? ID;
  int? quantity;
  int? price;
  String? title;
  String? imageurl;


}

