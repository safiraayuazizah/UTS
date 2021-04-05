import 'package:flutter/material.dart';
import 'item.dart';

class Item {
  int _id;
  String _merk;
  String _name;
  int _harga;

  int get id => _id;
  String get merk => this._merk;
  set merk(String value) => this._merk = value;
  String get name => this._name;
  set name(String value) => this._name = value;
  get harga => this._harga;
  set harga(value) => this._harga = value;
// konstruktor versi 1
  Item(this._merk, this._name, this._harga);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._merk = map['merk'];
    this._name = map['name'];
    this._harga = map['harga'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['merk'] = merk;
    map['name'] = name;
    map['harga'] = harga;
    return map;
  }
}
