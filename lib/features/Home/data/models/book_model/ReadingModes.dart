import 'dart:convert';

/// text : false
/// image : true

ReadingModes readingModesFromJson(String str) => ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());
class ReadingModes {
  ReadingModes({
      this.text, 
      this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;
ReadingModes copyWith({  bool? text,
  bool? image,
}) => ReadingModes(  text: text ?? this.text,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

}