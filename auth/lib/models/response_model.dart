import 'dart:convert';

class ResponseModel {
  ResponseModel({
    this.error,
    this.data,
    this.massage,
  });

  final dynamic error;
  final dynamic data;
  final dynamic massage;

  Map<String, dynamic> toMap() {
    return {
      'error': error,
      'data': data,
      'massage': massage,
    };
  }

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      error: map['error'],
      data: map['data'],
      massage: map['massage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseModel.fromJson(String source) => ResponseModel.fromMap(
        json.decode(source),
      );
}
