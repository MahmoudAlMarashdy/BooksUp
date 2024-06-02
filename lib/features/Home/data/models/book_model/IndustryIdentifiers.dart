import 'dart:convert';

/// type : "ISBN_13"
/// identifier : "9781284175554"

IndustryIdentifiers industryIdentifiersFromJson(String str) => IndustryIdentifiers.fromJson(json.decode(str));
String industryIdentifiersToJson(IndustryIdentifiers data) => json.encode(data.toJson());
class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;
IndustryIdentifiers copyWith({  String? type,
  String? identifier,
}) => IndustryIdentifiers(  type: type ?? this.type,
  identifier: identifier ?? this.identifier,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}