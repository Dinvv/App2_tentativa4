class Task {
  int? id;
  String title;
  String description;
  String importance;

  Task({
    this.id,
    required this.title,
    required this.description,
    required this.importance,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'importance': importance,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      importance: map['importance'] as String,
    );
  }
}
