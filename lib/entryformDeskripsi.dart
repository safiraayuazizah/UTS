import 'package:flutter/material.dart';
import 'Deskripsi.dart';

class EntryForm extends StatefulWidget {
  final Deskripsi deskripsi;
  EntryForm(this.deskripsi);
  @override
  EntryFormState createState() => EntryFormState(this.deskripsi);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Deskripsi deskripsi;
  EntryFormState(this.deskripsi);
  TextEditingController nameController = TextEditingController();
  TextEditingController kodeController = TextEditingController();
  TextEditingController ukuranController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //kondisi
    if (deskripsi != null) {
      nameController.text = deskripsi.name;
      kodeController.text = deskripsi.kode;
      ukuranController.text = deskripsi.ukuran;
      deskripsiController.text = deskripsi.deskripsi;
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          title: deskripsi == null ? Text('Tambah') : Text('Ubah'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                //name
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Nama Barang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //kode
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: kodeController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Kode',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //ukuran
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: ukuranController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Ukuran',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //deskripsi
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: deskripsiController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Deskripsi',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                // tombol button
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      // tombol simpan
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Save',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            if (deskripsi == null) {
                              // tambah data
                              deskripsi = Deskripsi(
                                nameController.text,
                                kodeController.text,
                                ukuranController.text,
                                deskripsiController.text,
                              );
                            } else {
                              // ubah data
                              deskripsi.name = nameController.text;
                              deskripsi.kode = kodeController.text;
                              deskripsi.ukuran = ukuranController.text;
                              deskripsi.deskripsi = deskripsiController.text;
                            }
                            // kembali ke layar sebelumnya dengan membawa objek item
                            Navigator.pop(context, deskripsi);
                          },
                        ),
                      ),
                      Container(
                        width: 5.0,
                      ),
                      // tombol batal
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Cancel',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
