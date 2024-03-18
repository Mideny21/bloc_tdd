import 'dart:convert';
import 'dart:io';

String readJson(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/$name').readAsStringSync();
}

List<dynamic> readListJson(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  String jsonString = File('$dir/test/$name').readAsStringSync();
  return jsonDecode(jsonString);
}
