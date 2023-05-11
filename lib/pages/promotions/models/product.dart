import 'dart:convert';

class Product {
  final String title;
  Product({
    required this.title,
  });

  Product copyWith({
    String? title,
  }) {
    return Product(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() => 'Product(title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product && other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
