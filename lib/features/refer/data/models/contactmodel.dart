import 'package:freezed_annotation/freezed_annotation.dart';

part 'contactmodel.freezed.dart';
part 'contactmodel.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String name,
    required String phone,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}

extension ContactX on Contact {
  String get initial => name.isNotEmpty ? name[0].toUpperCase() : '?';
}
