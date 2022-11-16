import 'package:http/http.dart' as http;
import 'dart:convert';

//  https://httpbin.org/ip
Future getIPAddress(){
  final url = 'https://httpbin.org/ip';
  return http.get(Uri.parse(url)).then((response){
    // print(response.body);
    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

void main() {
  getIPAddress()
  .then((ip)=>print(ip))
  .catchError((error)=>print(error));
}

