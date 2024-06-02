import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';
import 'dart:convert';

/// title : "Python Programming in Context"
/// authors : ["Bradley N. Miller","David L. Ranum","Julie Anderson"]
/// publisher : "Jones & Bartlett Learning"
/// publishedDate : "2019-10-01"
/// description : "Python Programming in Context, Third Edition provides a comprehensive and accessible introduction to Python fundamentals. Updated with the latest version of Python, the new Third Edition offers a thorough overview of multiple applied areas, including image processing, cryptography, astronomy, the Internet, and bioinformatics. Taking an active learning approach, each chapter starts with a comprehensive real-world project that teaches core design techniques and Python programming while engaging students. An ideal first language for learners entering the rapidly expanding field of computer science, Python gives students a solid platform of key problem-solving skills that translate easily across programming languages."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781284175554"},{"type":"ISBN_10","identifier":"1284175553"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 516
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.1.1.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=b-2oDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=b-2oDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=b-2oDwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=b-2oDwAAQBAJ&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Python_Programming_in_Context.html?hl=&id=b-2oDwAAQBAJ"

VolumeInfo volumeInfoFromJson(String str) => VolumeInfo.fromJson(json.decode(str));
String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());
class VolumeInfo {

  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
      this.title, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
VolumeInfo copyWith({  String? title,
  List<String>? authors,
  String? publisher,
  String? publishedDate,
  String? description,
  List<IndustryIdentifiers>? industryIdentifiers,
  ReadingModes? readingModes,
  int? pageCount,
  String? printType,
  List<String>? categories,
  String? maturityRating,
  bool? allowAnonLogging,
  String? contentVersion,
  PanelizationSummary? panelizationSummary,
  ImageLinks? imageLinks,
  String? language,
  String? previewLink,
  String? infoLink,
  String? canonicalVolumeLink,
}) => VolumeInfo(  title: title ?? this.title,
  authors: authors ?? this.authors,
  publisher: publisher ?? this.publisher,
  publishedDate: publishedDate ?? this.publishedDate,
  description: description ?? this.description,
  industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
  readingModes: readingModes ?? this.readingModes,
  pageCount: pageCount ?? this.pageCount,
  printType: printType ?? this.printType,
  categories: categories ?? this.categories,
  maturityRating: maturityRating ?? this.maturityRating,
  allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
  contentVersion: contentVersion ?? this.contentVersion,
  panelizationSummary: panelizationSummary ?? this.panelizationSummary,
  imageLinks: imageLinks ?? this.imageLinks,
  language: language ?? this.language,
  previewLink: previewLink ?? this.previewLink,
  infoLink: infoLink ?? this.infoLink,
  canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}