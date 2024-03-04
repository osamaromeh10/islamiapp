import 'dart:convert';
import 'package:http/http.dart' as http;


import 'models/RadiosModel.dart';
class ApiManager{
  static Future< List<Radios>?> getRadios() async
  {
  try
  {
Uri url = Uri.https("mp3quran.net","api/v3/radios");
  http.Response response = await http.get(url);
  RadiosModel radiosModel = RadiosModel.fromJson(jsonDecode(response.body));
  return radiosModel.radios;
  }
  catch(e){
  print(e);
  }
  }
}