import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your Name ?', 'What is your favorite animal ?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer2'), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
