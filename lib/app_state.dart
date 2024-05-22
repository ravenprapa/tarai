import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _menu = prefs
              .getStringList('ff_menu')
              ?.map((x) {
                try {
                  return MenuStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _menu;
    });
    _safeInit(() {
      _lastcreateddate =
          prefs.getString('ff_lastcreateddate') ?? _lastcreateddate;
    });
    _safeInit(() {
      _images = prefs.getStringList('ff_images') ?? _images;
    });
    _safeInit(() {
      _spaces = prefs
              .getStringList('ff_spaces')
              ?.map((x) {
                try {
                  return ChannelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _spaces;
    });
    _safeInit(() {
      _spaceicons = prefs
              .getStringList('ff_spaceicons')
              ?.map((x) {
                try {
                  return ImagesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _spaceicons;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_spacesjson')) {
        try {
          _spacesjson = jsonDecode(prefs.getString('ff_spacesjson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _space = prefs.getString('ff_space') ?? _space;
    });
    _safeInit(() {
      _collladate = prefs.getString('ff_collladate') ?? _collladate;
    });
    _safeInit(() {
      _cart = prefs
              .getStringList('ff_cart')
              ?.map((x) {
                try {
                  return CartStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cart;
    });
    _safeInit(() {
      _singleupload = prefs.getString('ff_singleupload') ?? _singleupload;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<SpecsStruct> _spec = [];
  List<SpecsStruct> get spec => _spec;
  set spec(List<SpecsStruct> value) {
    _spec = value;
  }

  void addToSpec(SpecsStruct value) {
    _spec.add(value);
  }

  void removeFromSpec(SpecsStruct value) {
    _spec.remove(value);
  }

  void removeAtIndexFromSpec(int index) {
    _spec.removeAt(index);
  }

  void updateSpecAtIndex(
    int index,
    SpecsStruct Function(SpecsStruct) updateFn,
  ) {
    _spec[index] = updateFn(_spec[index]);
  }

  void insertAtIndexInSpec(int index, SpecsStruct value) {
    _spec.insert(index, value);
  }

  List<String> _specslist = [];
  List<String> get specslist => _specslist;
  set specslist(List<String> value) {
    _specslist = value;
  }

  void addToSpecslist(String value) {
    _specslist.add(value);
  }

  void removeFromSpecslist(String value) {
    _specslist.remove(value);
  }

  void removeAtIndexFromSpecslist(int index) {
    _specslist.removeAt(index);
  }

  void updateSpecslistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _specslist[index] = updateFn(_specslist[index]);
  }

  void insertAtIndexInSpecslist(int index, String value) {
    _specslist.insert(index, value);
  }

  int _uploadedfile = 0;
  int get uploadedfile => _uploadedfile;
  set uploadedfile(int value) {
    _uploadedfile = value;
  }

  List<MenuStruct> _menu = [
    MenuStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Pin Commerce\",\"index\":\"1\"}')),
    MenuStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Par\",\"index\":\"2\"}'))
  ];
  List<MenuStruct> get menu => _menu;
  set menu(List<MenuStruct> value) {
    _menu = value;
    prefs.setStringList('ff_menu', value.map((x) => x.serialize()).toList());
  }

  void addToMenu(MenuStruct value) {
    _menu.add(value);
    prefs.setStringList('ff_menu', _menu.map((x) => x.serialize()).toList());
  }

  void removeFromMenu(MenuStruct value) {
    _menu.remove(value);
    prefs.setStringList('ff_menu', _menu.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMenu(int index) {
    _menu.removeAt(index);
    prefs.setStringList('ff_menu', _menu.map((x) => x.serialize()).toList());
  }

  void updateMenuAtIndex(
    int index,
    MenuStruct Function(MenuStruct) updateFn,
  ) {
    _menu[index] = updateFn(_menu[index]);
    prefs.setStringList('ff_menu', _menu.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMenu(int index, MenuStruct value) {
    _menu.insert(index, value);
    prefs.setStringList('ff_menu', _menu.map((x) => x.serialize()).toList());
  }

  String _lastcreateddate = '';
  String get lastcreateddate => _lastcreateddate;
  set lastcreateddate(String value) {
    _lastcreateddate = value;
    prefs.setString('ff_lastcreateddate', value);
  }

  List<CollectionStruct> _parcollections = [];
  List<CollectionStruct> get parcollections => _parcollections;
  set parcollections(List<CollectionStruct> value) {
    _parcollections = value;
  }

  void addToParcollections(CollectionStruct value) {
    _parcollections.add(value);
  }

  void removeFromParcollections(CollectionStruct value) {
    _parcollections.remove(value);
  }

  void removeAtIndexFromParcollections(int index) {
    _parcollections.removeAt(index);
  }

  void updateParcollectionsAtIndex(
    int index,
    CollectionStruct Function(CollectionStruct) updateFn,
  ) {
    _parcollections[index] = updateFn(_parcollections[index]);
  }

  void insertAtIndexInParcollections(int index, CollectionStruct value) {
    _parcollections.insert(index, value);
  }

  List<String> _images = [];
  List<String> get images => _images;
  set images(List<String> value) {
    _images = value;
    prefs.setStringList('ff_images', value);
  }

  void addToImages(String value) {
    _images.add(value);
    prefs.setStringList('ff_images', _images);
  }

  void removeFromImages(String value) {
    _images.remove(value);
    prefs.setStringList('ff_images', _images);
  }

  void removeAtIndexFromImages(int index) {
    _images.removeAt(index);
    prefs.setStringList('ff_images', _images);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _images[index] = updateFn(_images[index]);
    prefs.setStringList('ff_images', _images);
  }

  void insertAtIndexInImages(int index, String value) {
    _images.insert(index, value);
    prefs.setStringList('ff_images', _images);
  }

  List<ChannelStruct> _spaces = [];
  List<ChannelStruct> get spaces => _spaces;
  set spaces(List<ChannelStruct> value) {
    _spaces = value;
    prefs.setStringList('ff_spaces', value.map((x) => x.serialize()).toList());
  }

  void addToSpaces(ChannelStruct value) {
    _spaces.add(value);
    prefs.setStringList(
        'ff_spaces', _spaces.map((x) => x.serialize()).toList());
  }

  void removeFromSpaces(ChannelStruct value) {
    _spaces.remove(value);
    prefs.setStringList(
        'ff_spaces', _spaces.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSpaces(int index) {
    _spaces.removeAt(index);
    prefs.setStringList(
        'ff_spaces', _spaces.map((x) => x.serialize()).toList());
  }

  void updateSpacesAtIndex(
    int index,
    ChannelStruct Function(ChannelStruct) updateFn,
  ) {
    _spaces[index] = updateFn(_spaces[index]);
    prefs.setStringList(
        'ff_spaces', _spaces.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSpaces(int index, ChannelStruct value) {
    _spaces.insert(index, value);
    prefs.setStringList(
        'ff_spaces', _spaces.map((x) => x.serialize()).toList());
  }

  List<ImagesStruct> _spaceicons = [
    ImagesStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"one\",\"type\":\"Hello World\",\"url\":\"https://openmoji.org/data/color/svg/1F365.svg\"}')),
    ImagesStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Hello World\",\"type\":\"Hello World\",\"url\":\"https://openmoji.org/data/color/svg/1F96E.svg\"}'))
  ];
  List<ImagesStruct> get spaceicons => _spaceicons;
  set spaceicons(List<ImagesStruct> value) {
    _spaceicons = value;
    prefs.setStringList(
        'ff_spaceicons', value.map((x) => x.serialize()).toList());
  }

  void addToSpaceicons(ImagesStruct value) {
    _spaceicons.add(value);
    prefs.setStringList(
        'ff_spaceicons', _spaceicons.map((x) => x.serialize()).toList());
  }

  void removeFromSpaceicons(ImagesStruct value) {
    _spaceicons.remove(value);
    prefs.setStringList(
        'ff_spaceicons', _spaceicons.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSpaceicons(int index) {
    _spaceicons.removeAt(index);
    prefs.setStringList(
        'ff_spaceicons', _spaceicons.map((x) => x.serialize()).toList());
  }

  void updateSpaceiconsAtIndex(
    int index,
    ImagesStruct Function(ImagesStruct) updateFn,
  ) {
    _spaceicons[index] = updateFn(_spaceicons[index]);
    prefs.setStringList(
        'ff_spaceicons', _spaceicons.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSpaceicons(int index, ImagesStruct value) {
    _spaceicons.insert(index, value);
    prefs.setStringList(
        'ff_spaceicons', _spaceicons.map((x) => x.serialize()).toList());
  }

  dynamic _spacesjson;
  dynamic get spacesjson => _spacesjson;
  set spacesjson(dynamic value) {
    _spacesjson = value;
    prefs.setString('ff_spacesjson', jsonEncode(value));
  }

  String _space = '';
  String get space => _space;
  set space(String value) {
    _space = value;
    prefs.setString('ff_space', value);
  }

  String _collladate = '';
  String get collladate => _collladate;
  set collladate(String value) {
    _collladate = value;
    prefs.setString('ff_collladate', value);
  }

  String _invquery = '';
  String get invquery => _invquery;
  set invquery(String value) {
    _invquery = value;
  }

  List<CartStruct> _cart = [];
  List<CartStruct> get cart => _cart;
  set cart(List<CartStruct> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.serialize()).toList());
  }

  void addToCart(CartStruct value) {
    _cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeFromCart(CartStruct value) {
    _cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void updateCartAtIndex(
    int index,
    CartStruct Function(CartStruct) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCart(int index, CartStruct value) {
    _cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  String _singleupload = '';
  String get singleupload => _singleupload;
  set singleupload(String value) {
    _singleupload = value;
    prefs.setString('ff_singleupload', value);
  }

  List<ImagelistaStruct> _imagesmulti = [];
  List<ImagelistaStruct> get imagesmulti => _imagesmulti;
  set imagesmulti(List<ImagelistaStruct> value) {
    _imagesmulti = value;
  }

  void addToImagesmulti(ImagelistaStruct value) {
    _imagesmulti.add(value);
  }

  void removeFromImagesmulti(ImagelistaStruct value) {
    _imagesmulti.remove(value);
  }

  void removeAtIndexFromImagesmulti(int index) {
    _imagesmulti.removeAt(index);
  }

  void updateImagesmultiAtIndex(
    int index,
    ImagelistaStruct Function(ImagelistaStruct) updateFn,
  ) {
    _imagesmulti[index] = updateFn(_imagesmulti[index]);
  }

  void insertAtIndexInImagesmulti(int index, ImagelistaStruct value) {
    _imagesmulti.insert(index, value);
  }

  List<String> _imgs = [];
  List<String> get imgs => _imgs;
  set imgs(List<String> value) {
    _imgs = value;
  }

  void addToImgs(String value) {
    _imgs.add(value);
  }

  void removeFromImgs(String value) {
    _imgs.remove(value);
  }

  void removeAtIndexFromImgs(int index) {
    _imgs.removeAt(index);
  }

  void updateImgsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _imgs[index] = updateFn(_imgs[index]);
  }

  void insertAtIndexInImgs(int index, String value) {
    _imgs.insert(index, value);
  }

  List<dynamic> _specjson = [];
  List<dynamic> get specjson => _specjson;
  set specjson(List<dynamic> value) {
    _specjson = value;
  }

  void addToSpecjson(dynamic value) {
    _specjson.add(value);
  }

  void removeFromSpecjson(dynamic value) {
    _specjson.remove(value);
  }

  void removeAtIndexFromSpecjson(int index) {
    _specjson.removeAt(index);
  }

  void updateSpecjsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _specjson[index] = updateFn(_specjson[index]);
  }

  void insertAtIndexInSpecjson(int index, dynamic value) {
    _specjson.insert(index, value);
  }

  dynamic _specjs;
  dynamic get specjs => _specjs;
  set specjs(dynamic value) {
    _specjs = value;
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
