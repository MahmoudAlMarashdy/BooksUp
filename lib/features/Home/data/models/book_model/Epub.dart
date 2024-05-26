class Epub {
  Epub({
      this.isAvailable,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;
Epub copyWith({  bool? isAvailable,
}) => Epub(  isAvailable: isAvailable ?? this.isAvailable,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

}