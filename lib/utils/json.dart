
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

Future<String> getJsonFile(String path) async {
  ByteData byte = await rootBundle.load(path);
  var list = byte.buffer.asUint8List(byte.offsetInBytes, byte.lengthInBytes);
  return utf8.decode(list);
}

class NestedJsonKey extends JsonKey {
  const NestedJsonKey({
    required super.name, super.fromJson
  }) : super(readValue: nestedReader);
}

Object? nestedReader(Map json, String key) {
  final keys = key.split('/');
  return _nestedReader(json, keys);
}

Object? _nestedReader(final Object? object, Iterable<String> keys) {
  if (keys.isEmpty || object == null) {
    return object;
  }
  if (object is Map) {
    final subObject = object[keys.first];
    final subKeys = keys.skip(1);
    return _nestedReader(subObject, subKeys);
  }
  if (object is List) {
    return object.fold<dynamic>([], (list, subObject) {
      return list..add(_nestedReader(subObject, keys));
    });
  }
  return object;
}