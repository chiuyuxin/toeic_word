class WordData {
  final String english;
  final String chinese;
  String? sentence;
  bool isMemorized;

  WordData({
    required this.english,
    required this.chinese,
    this.sentence,
    this.isMemorized = false,
  });
}
