int calculateTotal(int price, int quantity, {double discount = 0.0}) {
  final subtotal = price * quantity;
  final discounted = subtotal * discount;
  return subtotal - discounted.toInt();
}
