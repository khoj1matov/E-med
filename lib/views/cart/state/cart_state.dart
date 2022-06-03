abstract class CartState {
  CartState();
}

class CartInitial extends CartState {
  CartInitial();
}

class CartLoading extends CartState {
  CartLoading();
}

class CartComplete extends CartState {
  CartComplete();
}

class CartError extends CartState {
  CartError();
}
