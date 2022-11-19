import 'dart:convert';
import 'dart:io';

extension JsonExtensions on String {
  Future<dynamic> getJsonFromPath() async {
    final file = File(this);
    final json = jsonDecode(await file.readAsString());
    return json;
  }
}
