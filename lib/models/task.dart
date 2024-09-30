class Task {
  int? id;
  String title;
  String objective;
  String importance;

  Task({this.id, required this.title, required this.objective, required this.importance});

  // Converter o objeto Task em um Map (para inserir no banco)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'objective': objective,
      'importance': importance,
    };
  }

  // Converter um Map (do banco) para um objeto Task
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      objective: map['objective'],
      importance: map['importance'],
    );
  }
}
