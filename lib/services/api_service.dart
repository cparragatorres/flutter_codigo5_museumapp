import 'dart:async';
import 'dart:io';

import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class APIService {
  Logger logger = Logger();

  Future getMuseums() async {
    try {
      //http://192.168.100.5:8000/API/museums/
      String _path = "http://192.168.100.5:8000/API/museums/";
      Uri _uri = Uri.parse("");
      http.Response response = await http.get(_uri);

    } on TimeoutException catch (error) {
      return Future.error("Error: TimeoutException");
    } on SocketException catch (error) {
      return Future.error("Error: SocketException");
    } on FormatException catch (error) {
      return Future.error("Error: FormatException");
    } on Error catch (error) {
      return Future.error("Error");
    }
  }
}
