class Product {
  String _id;
  String _name;
  double _price;
  int _amount;

  Product(this._id, this._name, this._price, this._amount);

  String get id => _id;

  String get name => _name;

  double get price => _price;

  int get amount => _amount;

  set id(String value) => _id = value;
  set name(String value) => _name = value;
  set price(double value) => _price = value;
  set amount(int value) => _amount = value;

  Map<String, String> toJson() {
    return {
      'id': _id,
      'name': _name,
      'price': _price.toString(),
      'amount': _amount.toString(),
    };
  }
}
