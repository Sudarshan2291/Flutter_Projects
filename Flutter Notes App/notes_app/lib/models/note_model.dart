class Note {
  String title;
  String content;
  String date;

  Note({
    required this.title,
    required this.content,
    required this.date,
  });

  Map<String, dynamic> toJson() =>
      {'title': title, 'content': content, 'date': date};

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        title: json['title'],
        content: json['content'],
        date: json['date'],
      );
}
