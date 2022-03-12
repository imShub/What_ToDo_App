class Task {
  final int? id;
  final String? title;
  final String? descripion;

  Task({this.id, this.title, this.descripion});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': descripion,
    };
  }
}
