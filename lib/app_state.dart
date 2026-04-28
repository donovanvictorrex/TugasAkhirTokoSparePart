import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cart =
          prefs.getStringList('ff_cart')?.map((path) => path.ref).toList() ??
              _cart;
    });
    _safeInit(() {
      _cartPriceSummary = prefs
              .getStringList('ff_cartPriceSummary')
              ?.map(double.parse)
              .toList() ??
          _cartPriceSummary;
    });
    _safeInit(() {
      _shippingOptions = prefs
              .getStringList('ff_shippingOptions')
              ?.map((x) {
                try {
                  return ShippingOptionsStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _shippingOptions;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.path).toList());
  }

  void addToCart(DocumentReference value) {
    cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference value) {
    cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  List<double> _cartPriceSummary = [];
  List<double> get cartPriceSummary => _cartPriceSummary;
  set cartPriceSummary(List<double> value) {
    _cartPriceSummary = value;
    prefs.setStringList(
        'ff_cartPriceSummary', value.map((x) => x.toString()).toList());
  }

  void addToCartPriceSummary(double value) {
    cartPriceSummary.add(value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartPriceSummary(double value) {
    cartPriceSummary.remove(value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartPriceSummary(int index) {
    cartPriceSummary.removeAt(index);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void updateCartPriceSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartPriceSummary[index] = updateFn(_cartPriceSummary[index]);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartPriceSummary(int index, double value) {
    cartPriceSummary.insert(index, value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  List<ShippingOptionsStruct> _shippingOptions = [
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Express Delivery\",\"description\":\"Get your shipment in 2-3 business days\",\"price\":\"25\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Standard Delivery\",\"description\":\"Get your shipment in 5-7 business days\",\"price\":\"10\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Free Delivery\",\"description\":\"Get your no rush option for recieving your package in 10-15 business days.\",\"price\":\"0\"}'))
  ];
  List<ShippingOptionsStruct> get shippingOptions => _shippingOptions;
  set shippingOptions(List<ShippingOptionsStruct> value) {
    _shippingOptions = value;
    prefs.setStringList(
        'ff_shippingOptions', value.map((x) => x.serialize()).toList());
  }

  void addToShippingOptions(ShippingOptionsStruct value) {
    shippingOptions.add(value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeFromShippingOptions(ShippingOptionsStruct value) {
    shippingOptions.remove(value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromShippingOptions(int index) {
    shippingOptions.removeAt(index);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void updateShippingOptionsAtIndex(
    int index,
    ShippingOptionsStruct Function(ShippingOptionsStruct) updateFn,
  ) {
    shippingOptions[index] = updateFn(_shippingOptions[index]);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInShippingOptions(int index, ShippingOptionsStruct value) {
    shippingOptions.insert(index, value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  dynamic _provincestatis = jsonDecode(
      '{\"meta\":{\"message\":\"Success Get Province\",\"code\":200,\"status\":\"success\"},\"data\":[{\"id\":1,\"name\":\"NUSA TENGGARA BARAT (NTB)\"},{\"id\":2,\"name\":\"MALUKU\"},{\"id\":3,\"name\":\"KALIMANTAN SELATAN\"},{\"id\":4,\"name\":\"KALIMANTAN TENGAH\"},{\"id\":5,\"name\":\"JAWA BARAT\"},{\"id\":6,\"name\":\"BENGKULU\"},{\"id\":7,\"name\":\"KALIMANTAN TIMUR\"},{\"id\":8,\"name\":\"KEPULAUAN RIAU\"},{\"id\":9,\"name\":\"NANGGROE ACEH DARUSSALAM (NAD)\"},{\"id\":10,\"name\":\"DKI JAKARTA\"},{\"id\":11,\"name\":\"BANTEN\"},{\"id\":12,\"name\":\"JAWA TENGAH\"},{\"id\":13,\"name\":\"JAMBI\"},{\"id\":14,\"name\":\"PAPUA\"},{\"id\":15,\"name\":\"BALI\"},{\"id\":16,\"name\":\"SUMATERA UTARA\"},{\"id\":17,\"name\":\"GORONTALO\"},{\"id\":18,\"name\":\"JAWA TIMUR\"},{\"id\":19,\"name\":\"DI YOGYAKARTA\"},{\"id\":20,\"name\":\"SULAWESI TENGGARA\"},{\"id\":21,\"name\":\"NUSA TENGGARA TIMUR (NTT)\"},{\"id\":22,\"name\":\"SULAWESI UTARA\"},{\"id\":23,\"name\":\"SUMATERA BARAT\"},{\"id\":24,\"name\":\"BANGKA BELITUNG\"},{\"id\":25,\"name\":\"RIAU\"},{\"id\":26,\"name\":\"SUMATERA SELATAN\"},{\"id\":27,\"name\":\"SULAWESI TENGAH\"},{\"id\":28,\"name\":\"KALIMANTAN BARAT\"},{\"id\":29,\"name\":\"PAPUA BARAT\"},{\"id\":30,\"name\":\"LAMPUNG\"},{\"id\":31,\"name\":\"KALIMANTAN UTARA\"},{\"id\":32,\"name\":\"MALUKU UTARA\"},{\"id\":33,\"name\":\"SULAWESI SELATAN\"},{\"id\":34,\"name\":\"SULAWESI BARAT\"}]}');
  dynamic get provincestatis => _provincestatis;
  set provincestatis(dynamic value) {
    _provincestatis = value;
  }

  String _selectedProvID = '';
  String get selectedProvID => _selectedProvID;
  set selectedProvID(String value) {
    _selectedProvID = value;
  }

  dynamic _dataKotaJSON;
  dynamic get dataKotaJSON => _dataKotaJSON;
  set dataKotaJSON(dynamic value) {
    _dataKotaJSON = value;
  }

  String _selectedCourier = '';
  String get selectedCourier => _selectedCourier;
  set selectedCourier(String value) {
    _selectedCourier = value;
  }

  double _currentWeight = 0.0;
  double get currentWeight => _currentWeight;
  set currentWeight(double value) {
    _currentWeight = value;
  }

  String _selectedCityID = '';
  String get selectedCityID => _selectedCityID;
  set selectedCityID(String value) {
    _selectedCityID = value;
  }

  double _biayaOngkir = 0.0;
  double get biayaOngkir => _biayaOngkir;
  set biayaOngkir(double value) {
    _biayaOngkir = value;
  }

  String _shipingselec = '';
  String get shipingselec => _shipingselec;
  set shipingselec(String value) {
    _shipingselec = value;
  }

  List<CartItemStruct> _mycart = [];
  List<CartItemStruct> get mycart => _mycart;
  set mycart(List<CartItemStruct> value) {
    _mycart = value;
  }

  void addToMycart(CartItemStruct value) {
    mycart.add(value);
  }

  void removeFromMycart(CartItemStruct value) {
    mycart.remove(value);
  }

  void removeAtIndexFromMycart(int index) {
    mycart.removeAt(index);
  }

  void updateMycartAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    mycart[index] = updateFn(_mycart[index]);
  }

  void insertAtIndexInMycart(int index, CartItemStruct value) {
    mycart.insert(index, value);
  }

  final _productListManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> productList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _productListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductListCache() => _productListManager.clear();
  void clearProductListCacheKey(String? uniqueKey) =>
      _productListManager.clearRequest(uniqueKey);

  final _transactionsManager = StreamRequestManager<List<TransactionsRecord>>();
  Stream<List<TransactionsRecord>> transactions({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TransactionsRecord>> Function() requestFn,
  }) =>
      _transactionsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTransactionsCache() => _transactionsManager.clear();
  void clearTransactionsCacheKey(String? uniqueKey) =>
      _transactionsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
