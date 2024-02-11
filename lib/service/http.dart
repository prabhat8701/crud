import 'dart:convert';

import 'package:crud_frontend/model/product_model.dart';
import 'package:crud_frontend/post.dart';
import 'package:http/http.dart' as http;

class Http {
  static String url = "http://192.168.180.1/api/";

  static postProduct(Map pdata) async {
    try {
      final res = await http.post(Uri.parse("${url}add_product"), body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Failed to load data");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static getProduct() async {
    List<Product> product = [];
    try {
      final res = await http.get(Uri.parse("${url}get_product"));

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        data['product'].forEach((value) => {
              product.add(
                Product(
                  value['name'],
                  value['price'],
                  value['desc'],
                ),
              )
            });
            return product;
      }
      else{
        return [];
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
