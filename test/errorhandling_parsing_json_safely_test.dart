import 'package:errorhandling_parsing_json_safely/errorhandling_parsing_json_safely.dart';
import 'package:test/test.dart';

void main() {
  group('JSON Parsing Tests', () {
    test('Valid JSON returns a decoded object', () {
      expect(parseJsonSafely('{"name": "John", "age": 30}'), isNotNull);
    });

    test('Invalid JSON returns null', () {
      expect(parseJsonSafely('{"name": "John", age: 30}'), isNull);
    });

    test('Empty string returns null', () {
      expect(parseJsonSafely(''), isNull);
    });
  });
}
