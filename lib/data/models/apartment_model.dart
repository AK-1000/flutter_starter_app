// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class ApartmentModel {
  String id;
  String ownerEmail;
  String ownerName;
  String ownerPhone;
  String type;
  String price;
  String description;
  String size;
  String address;
  List<String> images;
  String viewImage;

  ApartmentModel({
    required this.id,
    required this.ownerEmail,
    required this.ownerName,
    required this.ownerPhone,
    required this.type,
    required this.price,
    required this.description,
    required this.size,
    required this.address,
    required this.images,
    required this.viewImage,
  });

  ApartmentModel copyWith({
    String? id,
    String? ownerEmail,
    String? ownerName,
    String? ownerPhone,
    String? type,
    String? price,
    String? description,
    String? size,
    String? address,
    List<String>? images,
    String? viewImage,
  }) {
    return ApartmentModel(
      id: id ?? this.id,
      ownerEmail: ownerEmail ?? this.ownerEmail,
      ownerName: ownerName ?? this.ownerName,
      ownerPhone: ownerPhone ?? this.ownerPhone,
      type: type ?? this.type,
      price: price ?? this.price,
      description: description ?? this.description,
      size: size ?? this.size,
      address: address ?? this.address,
      images: images ?? this.images,
      viewImage: viewImage ?? this.viewImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ownerEmail': ownerEmail,
      'ownerName': ownerName,
      'ownerPhone': ownerPhone,
      'type': type,
      'price': price,
      'description': description,
      'size': size,
      'address': address,
      'images': images,
      'viewImage': viewImage,
    };
  }

  factory ApartmentModel.fromMap(Map<String, dynamic> map) {
    return ApartmentModel(
      id: map['id'] as String,
      ownerEmail: map['ownerEmail'] as String,
      ownerName: map['ownerName'] as String,
      ownerPhone: map['ownerPhone'] as String,
      type: map['type'] as String,
      price: map['price'] as String,
      description: map['description'] as String,
      size: map['size'] as String,
      address: map['address'] as String,
      viewImage: map['viewImage'] as String,
      images: List<String>.from(
        (map['images'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApartmentModel.fromJson(String source) =>
      ApartmentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApartmentModel(id: $id, ownerEmail: $ownerEmail, ownerName: $ownerName, ownerPhone: $ownerPhone, type: $type, price: $price, description: $description, size: $size, address: $address, images: $images, viewImage: $viewImage)';
  }

  @override
  bool operator ==(covariant ApartmentModel other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.ownerEmail == ownerEmail &&
        other.ownerName == ownerName &&
        other.ownerPhone == ownerPhone &&
        other.type == type &&
        other.price == price &&
        other.description == description &&
        other.size == size &&
        other.address == address &&
        listEquals(other.images, images) &&
        other.viewImage == viewImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        ownerEmail.hashCode ^
        ownerName.hashCode ^
        ownerPhone.hashCode ^
        type.hashCode ^
        price.hashCode ^
        description.hashCode ^
        size.hashCode ^
        address.hashCode ^
        images.hashCode ^
        viewImage.hashCode;
  }
}
