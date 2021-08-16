class Task {
  int id;
  String title;
  DateTime date;
  String director;
  String photo;
  int status; // 0 - complete, 1- complete

  Task({this.title, this.date, this.director, this.status,this.photo});
  Task.withId({this.id, this.title, this.date, this.director, this.status,this.photo});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['date'] = date.toIso8601String();
    map['director'] = director;
    map['status'] = status;
    map['photo'] = photo;

    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
        id: map['id'],
        title: map['title'],
        date: DateTime.parse(map['date']),
        director: map['director'],
        status: map['status'],
        photo: map['photo']);

  }
}
