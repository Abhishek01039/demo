// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    json['id'] as int?,
    json['name'] as String?,
    json['desc'] as String?,
    json['image'] as String?,
    (json['price'] as num?)?.toDouble(),
    (json['mrp'] as num?)?.toDouble(),
    json['quantity'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'image': instance.image,
      'price': instance.price,
      'mrp': instance.mrp,
      'quantity': instance.quantity,
    };
