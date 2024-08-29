class ApartmentEntity {
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

  ApartmentEntity({
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
}
