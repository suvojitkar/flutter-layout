class ProductModel {
  String id;
  String categoryName;
  String status;

  ProductModel(String id, String categoryName, String status) {
    this.id = id;
    this.categoryName = categoryName;
    this.status = status;
  }

  ProductModel.fromJson(Map<String,dynamic> json)
      : id = json['id'],
        categoryName = json['category_name'],
        status = json['category_status'];
}