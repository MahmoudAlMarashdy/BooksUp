import 'dart:convert';

/// textSnippet : "Updated with the latest version of Python, the new Third Edition offers a thorough overview of multiple applied areas, including image processing, cryptography, astronomy, the Internet, and bioinformatics."

SearchInfo searchInfoFromJson(String str) => SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());
class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? this.textSnippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}