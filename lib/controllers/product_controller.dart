import '../models/producto.dart';

class ProductController {
  static final List<Product> _products = [];

  static void addProduct(Product product) {
    _products.add(product);
  }

  static List<Product> get products => _products;
}
