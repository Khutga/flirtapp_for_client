class Message {
  int id;
  String message;
  String role;
  String? description;
  List options;
  String? time;

  Message({
    required this.id,
    required this.message,
    required this.role,
    required this.description,
    required this.options,
    required this.time,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      message: json['message'],
      role: json['role'],
      description: json['description'],
      options: json['options'],
      time: json['time'],
    );
  }

  // Convert Message to a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'role': role,
      'description': description,
      'options': options,
      'time': time,
    };
  }
}

