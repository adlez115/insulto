
import 'package:dio/dio.dart';
import 'package:insulto_api/src/models/insulto_models.dart';

class InsultoProvider{
  final _url = 'https://evilinsult.com/generate_insult.php';
  final _http = Dio();

Future insulto() async{
  final response = await _http.get(_url);
  List<dynamic> data = response.data;
  data.map((insulto) => InsultoModel.instancia(insulto)).toList();
  }
}