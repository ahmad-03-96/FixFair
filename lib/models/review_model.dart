class Review {
  final String id;
  final String customerName;
  final String serviceType;
  final int rating;
  final String comment;
  final DateTime date;
  final bool verified;

  Review({
    required this.id,
    required this.customerName,
    required this.serviceType,
    required this.rating,
    required this.comment,
    required this.date,
    this.verified = false,
  });

  // JSON Serialisierung
  Map<String, dynamic> toJson() => {
    'id': id,
    'customerName': customerName,
    'serviceType': serviceType,
    'rating': rating,
    'comment': comment,
    'date': date.toIso8601String(),
    'verified': verified,
  };

  // JSON Deserialisierung
  factory Review.fromJson(Map<String, dynamic> json) => Review(
    id: json['id'] ?? '',
    customerName: json['customerName'] ?? '',
    serviceType: json['serviceType'] ?? '',
    rating: json['rating'] ?? 0,
    comment: json['comment'] ?? '',
    date: DateTime.parse(json['date'] ?? DateTime.now().toIso8601String()),
    verified: json['verified'] ?? false,
  );

  @override
  String toString() {
    return 'Review{id: $id, customer: $customerName, rating: $rating}';
  }
}
