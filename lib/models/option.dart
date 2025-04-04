class Option {
  String role;
  String message;
  bool status;
  String? description;

  Option({
    required this.role,
    required this.message,
    required this.status,
    required this.description,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      role: json['role'],
      message: json['message'],
      status: json['status'],
      description: json['description'],
    );
  }

  // Convert Option to a Map
  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'message': message,
      'status': status,
      'description': description,
    };
  }
}

