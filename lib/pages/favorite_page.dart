import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class FavoritePage extends StatelessWidget {

  _generatePDF() async{
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context){
          return pw.Text("Hola");
        }
      ),
    );

    Uint8List bytes = await pdf.save();
    Directory dir = await getApplicationDocumentsDirectory();

    File _file = File("${dir.path}/example2PDF.pdf");
    _file.writeAsBytes(bytes);
    print(_file.path);


  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _generatePDF();
            },
            child: Text(
              "Generar PDF",
            ),
          ),
        ],
      ),
    );
  }
}
