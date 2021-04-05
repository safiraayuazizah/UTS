import 'package:flutter/material.dart';
import 'Deskripsi.dart';

class Deskripsi {
  int _id;
  String _name;
  String _kode;
  String _ukuran;
  String _deskripsi;

  int get id => _id;
  String get name => this._name;
  set name(String value) => this._name = value;
  String get kode => this._kode;
  set kode(String value) => this._kode = value;
  String get ukuran => this._ukuran;
  set ukuran(String value) => this._ukuran = value;
  String get deskripsi => this._deskripsi;
  set deskripsi(String value) => this._deskripsi = value;

// konstruktor versi 1
  Deskripsi(this._name, this._kode, this._ukuran, this._deskripsi);

  // konstruktor versi 2: konversi dari Map ke Item
  Deskripsi.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._kode = map['kode'];
    this._ukuran = map['ukuran'];
    this._deskripsi = map['deskripsi'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['kode'] = kode;
    map['ukuran'] = ukuran;
    map['deskripsi'] = deskripsi;
    return map;
  }
}
