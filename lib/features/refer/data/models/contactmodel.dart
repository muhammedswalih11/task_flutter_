class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});

  String get initial => name.isNotEmpty ? name[0].toUpperCase() : '?';

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(name: json['name'], phone: json['phone']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'phone': phone};
  }
}
