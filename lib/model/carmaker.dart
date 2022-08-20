import 'package:freezed_annotation/freezed_annotation.dart';

part 'carmaker.freezed.dart';
part 'carmaker.g.dart';

@freezed
class Carmaker with _$Carmaker {
  // {}を中に書いて、その中に、プロパティを?つけて書く!
  factory Carmaker({String? maker, String? product, int? price}) = _Carmaker;

  factory Carmaker.fromJson(Map<String, dynamic> json) =>
      _$CarmakerFromJson(json);
}
