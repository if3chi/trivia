import 'dart:math';

class Quiz {
  List<Map<String, Object>> _questionsList = [
    {
      'question': 'What does “www” stand for in a website browser?',
      'answer': [
        {'text': 'Wild Wild West', 'score': 0},
        {'text': 'World Wide Web', 'score': 10},
        {'text': 'World Wide Waiting', 'score': 0}
      ],
    },
    {
      'question': 'What geometric shape is generally used for stop signs?',
      'answer': [
        {'text': 'Square', 'score': 0},
        {'text': 'Circle', 'score': 0},
        {'text': 'Octagon', 'score': 10}
      ]
    },
    {
      'question': 'What is "cynophobia"?',
      'answer': [
        {'text': 'Fear of goats', 'score': 0},
        {'text': 'Fear of Cats', 'score': 0},
        {'text': 'Fear of dogs', 'score': 10},
      ]
    },
    {
      'question':
          'When Walt Disney was a child, which character did he play in his school function?',
      'answer': [
        {'text': 'Peter Packer', 'score': 0},
        {'text': 'Peter Pan', 'score': 10},
        {'text': 'Spider Man', 'score': 0},
      ]
    },
    {
      'question': 'In what type of matter are atoms most tightly packed?',
      'answer': [
        {'text': 'Gas', 'score': 0},
        {'text': 'Solid', 'score': 10},
        {'text': 'Liquid', 'score': 0},
      ]
    }
  ];

  Quiz() {
    shuffleList();
  }

  String question(int index) => _questionsList[index]['question'].toString();

  List<Map<String, Object>> answers(int index) {
    var shuffledList =
        _questionsList[index]['answer'] as List<Map<String, Object>>;
    shuffledList.shuffle();
    return shuffledList;
  }

  bool hasMoreQtns(int index) => index < _questionsList.length;

  void shuffleList() {
    List<Map<String, Object>> qtns = _questionsList;

    for (var i = qtns.length - 1; i > 0; i--) {
      var n = Random().nextInt(i + 1);
      var temp = qtns[i];
      qtns[i] = qtns[n];
      qtns[n] = temp;
    }
    _questionsList = qtns;
  }
}
