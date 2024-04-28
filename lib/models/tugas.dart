// To parse this JSON data, do
//
//     final Tugas = TugasFromJson(jsonString);

import 'dart:convert';

List<Tugas> tugasFromJson(String str) =>
    List<Tugas>.from(json.decode(str).map((x) => Tugas.fromJson(x)));

String tugasToJson(List<Tugas> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tugas {
  String model;
  int pk;
  Fields fields;

  Tugas({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Tugas.fromJson(Map<String, dynamic> json) => Tugas(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int amount;
  String description;
  DateTime dateAdded;
  DateTime deadline;

  Fields({
    required this.user,
    required this.name,
    required this.amount,
    required this.description,
    required this.dateAdded,
    required this.deadline,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
        dateAdded: DateTime.parse(json["date_added"]),
        deadline: DateTime.parse(json["deadline"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "description": description,
        "date_added":
            "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
        "deadline": deadline.toIso8601String(),
      };
}
