class Task {
  String _title = "";
  String? _description;
  String? _type;
  String? _author;
  DateTime? _creationDate;
  DateTime? _finishedDate;
  bool? _completed = false;

  Task({required title, description, type, status, author}) {
    _title = title;
    _description = description;
    _type = type;
    _completed = status;
    _creationDate = DateTime.now();
    _finishedDate = null;
    _author = author;
  }

  bool? get completed => _completed;

  DateTime? get finishedDate => _finishedDate;

  DateTime? get creationDate => _creationDate;

  String? get type => _type;

  String? getDescription() {
    if (_description == null) {
      return "<  unknown   >";
    } else
      return _description;
  }

  String get title => _title;

  String? get author => _author;
}
