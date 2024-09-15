import 'dart:ffi';

/// Array's Helpers

extension on Array {}

extension on List<Array> {
  // Array get sum => fold(0, (previousValue, element) => ...previousValue , ...element);

  // Array get count => compine;
}

extension IterableExtension<E> on Iterable<E> {
  Iterable<E> whereIf(bool condition, bool Function(E) exp) {
    if (condition) {
      return where(exp);
    }

    return this;
  }

  E? firstWhereOrNull(bool Function(E element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  /// Calculates the sum of a specific attribute for each element in the iterable.
  ///
  /// [exp] - A function that takes an element of type E and returns the first attribute value to be summed.
  /// [exp2] - (Optional) A function that takes an element of type E and returns the second attribute value to be summed.
  ///              If not provided, defaults to 0.
  /// @example
  /// ```
  /// class Product {
  ///    final String name;
  ///    final double price;
  ///    final int quantity;
  ///
  ///    Product({required this.name, required this.price, required this.quantity});
  /// }
  ///
  ///
  ///
  ///  List<Product> products = [
  ///    Product(name: "Product 1", price: 10.0, quantity: 2),
  ///    Product(name: "Product 2", price: 15.0, quantity: 3),
  ///    Product(name: "Product 3", price: 5.0, quantity: 1),
  ///  ];
  ///
  ///  // Calculate total price
  ///  double totalPrice = products.sumBy((product) => product.price);
  ///  print(totalPrice); // Output: 30.0
  ///
  ///  // Calculate total revenue (price * quantity)
  ///  double totalRevenue =
  ///      products.sumBy((product) => product.price * product.quantity);
  ///  print(totalRevenue); // Output: 70.0
  ///
  ///  // Calculate total quantity with a default value for the second attribute
  ///  double totalItems = products.sumBy((p1) => p1.price * p1.quantity,
  ///      selector2: (p2) => p2.quantity.toDouble());
  ///  print(totalItems); // Output: 76
  ///
  /// ```
  ///
  double sumBy(double Function(E element) exp,
      {double Function(E element)? exp2}) {
    double sum = 0.0;

    for (final element in this) {
      sum += exp(element);

      if (exp2 != null) {
        sum += exp2(element);
      }
    }
    return sum;
  }
}
