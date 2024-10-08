import 'package:flutter/material.dart';
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
      _toggle =
          prefs.getStringList('ff_toggle')?.map((x) => x == 'true').toList() ??
              _toggle;
    });
    _safeInit(() {
      _posts = prefs
              .getStringList('ff_posts')
              ?.map((x) {
                try {
                  return PostssStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _posts;
    });
    _safeInit(() {
      _isItemAdded = prefs.getBool('ff_isItemAdded') ?? _isItemAdded;
    });
    _safeInit(() {
      _profilepic = prefs.getString('ff_profilepic') ?? _profilepic;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isFav = false;
  bool get isFav => _isFav;
  set isFav(bool value) {
    _isFav = value;
  }

  List<bool> _toggle = [];
  List<bool> get toggle => _toggle;
  set toggle(List<bool> value) {
    _toggle = value;
    prefs.setStringList('ff_toggle', value.map((x) => x.toString()).toList());
  }

  void addToToggle(bool value) {
    toggle.add(value);
    prefs.setStringList('ff_toggle', _toggle.map((x) => x.toString()).toList());
  }

  void removeFromToggle(bool value) {
    toggle.remove(value);
    prefs.setStringList('ff_toggle', _toggle.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromToggle(int index) {
    toggle.removeAt(index);
    prefs.setStringList('ff_toggle', _toggle.map((x) => x.toString()).toList());
  }

  void updateToggleAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    toggle[index] = updateFn(_toggle[index]);
    prefs.setStringList('ff_toggle', _toggle.map((x) => x.toString()).toList());
  }

  void insertAtIndexInToggle(int index, bool value) {
    toggle.insert(index, value);
    prefs.setStringList('ff_toggle', _toggle.map((x) => x.toString()).toList());
  }

  List<PostssStruct> _posts = [];
  List<PostssStruct> get posts => _posts;
  set posts(List<PostssStruct> value) {
    _posts = value;
    prefs.setStringList('ff_posts', value.map((x) => x.serialize()).toList());
  }

  void addToPosts(PostssStruct value) {
    posts.add(value);
    prefs.setStringList('ff_posts', _posts.map((x) => x.serialize()).toList());
  }

  void removeFromPosts(PostssStruct value) {
    posts.remove(value);
    prefs.setStringList('ff_posts', _posts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPosts(int index) {
    posts.removeAt(index);
    prefs.setStringList('ff_posts', _posts.map((x) => x.serialize()).toList());
  }

  void updatePostsAtIndex(
    int index,
    PostssStruct Function(PostssStruct) updateFn,
  ) {
    posts[index] = updateFn(_posts[index]);
    prefs.setStringList('ff_posts', _posts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPosts(int index, PostssStruct value) {
    posts.insert(index, value);
    prefs.setStringList('ff_posts', _posts.map((x) => x.serialize()).toList());
  }

  List<ClothesStruct> _favclothesList = [];
  List<ClothesStruct> get favclothesList => _favclothesList;
  set favclothesList(List<ClothesStruct> value) {
    _favclothesList = value;
  }

  void addToFavclothesList(ClothesStruct value) {
    favclothesList.add(value);
  }

  void removeFromFavclothesList(ClothesStruct value) {
    favclothesList.remove(value);
  }

  void removeAtIndexFromFavclothesList(int index) {
    favclothesList.removeAt(index);
  }

  void updateFavclothesListAtIndex(
    int index,
    ClothesStruct Function(ClothesStruct) updateFn,
  ) {
    favclothesList[index] = updateFn(_favclothesList[index]);
  }

  void insertAtIndexInFavclothesList(int index, ClothesStruct value) {
    favclothesList.insert(index, value);
  }

  int _cartcount = 0;
  int get cartcount => _cartcount;
  set cartcount(int value) {
    _cartcount = value;
  }

  List<double> _priceList = [];
  List<double> get priceList => _priceList;
  set priceList(List<double> value) {
    _priceList = value;
  }

  void addToPriceList(double value) {
    priceList.add(value);
  }

  void removeFromPriceList(double value) {
    priceList.remove(value);
  }

  void removeAtIndexFromPriceList(int index) {
    priceList.removeAt(index);
  }

  void updatePriceListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    priceList[index] = updateFn(_priceList[index]);
  }

  void insertAtIndexInPriceList(int index, double value) {
    priceList.insert(index, value);
  }

  double _price = 0.0;
  double get price => _price;
  set price(double value) {
    _price = value;
  }

  bool _isItemAdded = true;
  bool get isItemAdded => _isItemAdded;
  set isItemAdded(bool value) {
    _isItemAdded = value;
    prefs.setBool('ff_isItemAdded', value);
  }

  DateTime? _calenderSelectedDay;
  DateTime? get calenderSelectedDay => _calenderSelectedDay;
  set calenderSelectedDay(DateTime? value) {
    _calenderSelectedDay = value;
  }

  bool _isItemAddedToCart = false;
  bool get isItemAddedToCart => _isItemAddedToCart;
  set isItemAddedToCart(bool value) {
    _isItemAddedToCart = value;
  }

  String _profilepic = '';
  String get profilepic => _profilepic;
  set profilepic(String value) {
    _profilepic = value;
    prefs.setString('ff_profilepic', value);
  }

  LatLng? _loc;
  LatLng? get loc => _loc;
  set loc(LatLng? value) {
    _loc = value;
  }
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
