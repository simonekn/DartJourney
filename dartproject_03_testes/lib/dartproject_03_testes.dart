double discountCalculator(double value, double discount, bool percent){
  if (value <=0){
    throw ArgumentError("The price can't be zero");
  }
  if (discount <=0){
    throw ArgumentError("Discount can't be zero");
  }
  if (percent){
    return value - (value*discount)/100;
  }
  return value - discount;
}

String convertToUpperr(String text) {
  return text.toUpperCase();
}