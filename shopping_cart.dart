// shopping_cart.dart

// Function to calculate total price, with optional tax
double calculateTotal(List<double> prices, {double taxPercent = 0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  double total = subtotal + (subtotal * taxPercent / 100);
  return total;
}

// Recursive function to calculate factorial (for discount)
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Recursive discount based on factorial of number of items
double calculateFactorialDiscount(int itemCount) {
  int fact = factorial(itemCount);
  return fact.toDouble(); // discount percentage (e.g., 4! = 24%)
}

// Higher-order function to apply discount to list of prices
List<double> applyDiscount(List<double> prices, double Function(double) discountFunc) {
  return prices.map((price) => discountFunc(price)).toList();
}

void main() {
  // Initial list of item prices
  List<double> itemPrices = [15.0, 8.0, 22.0, 5.0, 18.0];

  // Anonymous function to filter out items under $10
  var filteredItems = itemPrices.where((price) => price >= 10).toList();

  print('Filtered Items (>= \$10): $filteredItems');

  // Discount function: reduces price by 10%
  double discountFunction(double price) {
    return price * 0.9; // 10% discount
  }

  // Apply discount using higher-order function
  var discountedItems = applyDiscount(filteredItems, discountFunction);
  print('Discounted Items: $discountedItems');

  // Calculate total price after discount with 5% tax
  double totalWithTax = calculateTotal(discountedItems, taxPercent: 5);
  print('Total with 5% tax: \$${totalWithTax.toStringAsFixed(2)}');

  // Calculate factorial discount based on number of items
  double specialDiscountPercent = calculateFactorialDiscount(discountedItems.length);
  print('Special Discount: $specialDiscountPercent%');

  // Apply special discount to total
  double finalPrice = totalWithTax * ((100 - specialDiscountPercent) / 100);
  print('Final price after special discount: \$${finalPrice.toStringAsFixed(2)}');
}
