/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:convert';

export 'src/errorhandling_parsing_json_safely_base.dart';

/*
Practice Question 1: Parsing JSON Safely

Task:

Write a function named parseJsonSafely that takes a String (representing JSON data) 
and attempts to parse it using jsonDecode. 
Handle any FormatException that occurs and return null in case of invalid JSON.
 */

Map? parseJsonSafely(String jsonString) {
  try {
    return (jsonDecode(jsonString));
  } on FormatException catch (e) {
    print("Format exception thrown! Error: $e");
    return null;
  }
}
