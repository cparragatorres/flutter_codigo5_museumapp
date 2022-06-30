import 'dart:async';
import 'dart:io';

import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class APIService {
  Logger logger = Logger();

  getMuseums() async {
    try {
      //http://192.168.100.5:8000/API/museums/
      String _path = "http://192.168.100.5:8000/API/museums/";
      Uri _uri = Uri.parse(_path);
      http.Response response = await http.get(_uri);
      print(response.statusCode);
      print(response.body);
    } on TimeoutException catch (error) {
      logger.w(error);
    } on SocketException catch (error) {
      logger.w(error);
    } on FormatException catch (error) {
      logger.w(error);
    } on Error catch (error) {
      print("ddddddddd $error");
    }
  }
}
