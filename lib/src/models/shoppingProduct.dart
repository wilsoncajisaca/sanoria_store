class ShoppingProduct {
  final String name;
  final String weight;
  final double totalPrice;

  const ShoppingProduct({
    this.name,
    this.weight,
    this.totalPrice,
  });
}

const shoppingProductList = [
  ShoppingProduct(
    name: 'Zanahoria',
    totalPrice: 1.50,
    weight: '1Lb',
  ),
  ShoppingProduct(
    name: 'Remolacha',
    totalPrice: 0.75,
    weight: '1Kb',
  ),
  ShoppingProduct(
    name: 'Manzana',
    totalPrice: 2.25,
    weight: '1Lb',
  ),
  ShoppingProduct(
    name: 'Brocoli',
    totalPrice: 0.50,
    weight: '1Kb',
  ),
  ShoppingProduct(
    name: 'Coliflor',
    totalPrice: 1.10,
    weight: '1Lb',
  ),
];
