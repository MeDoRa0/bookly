import 'package:dio/dio.dart';

class ApiService {
  //this is the base link
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  //dio is a package used to request from links
  final Dio dio;

  ApiService(this.dio);
  
  // get method
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
