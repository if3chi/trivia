class Quiz {
  static const List<Map<String, Object>> _questionsList = [
    {
      'question': 'What does “www” stand for in a website browser?',
      'answer': ['Wild Wild West', 'World Wide Web', 'World Wide Waiting'],
    },
    {
      'question': 'What geometric shape is generally used for stop signs?',
      'answer': ['Octagon', 'Square', 'Circle']
    },
    {
      'question': 'What is "cynophobia"?',
      'answer': ['Fear of goats', 'Fear of Cats', 'Fear of dogs']
    }
  ];

  String question(int index) => _checkList(index)
      ? _questionsList[index]['question'].toString()
      : 'End of Quiz';
  List answers(int index) =>
      _checkList(index) ? _questionsList[index]['answer'] as List : [];

  bool _checkList(int index) => index < _questionsList.length;
}
