import 'dart:convert';

/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }
  String? country;
  String? saleability;
  bool? isEbook;
SaleInfo copyWith({  String? country,
  String? saleability,
  bool? isEbook,
}) => SaleInfo(  country: country ?? this.country,
  saleability: saleability ?? this.saleability,
  isEbook: isEbook ?? this.isEbook,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }

}