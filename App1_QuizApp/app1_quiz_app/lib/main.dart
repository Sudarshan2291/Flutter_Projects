import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Lary Page", "Elon musk"],
      "correctAnswer": 1
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        score++;
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        score--;
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage) {
      return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 123, 23, 141),
              ),
            ),
            toolbarHeight: 120,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 156, 199, 76)),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://imgs.search.brave.com/S3N3IcattdpFPpvfeJHTET5DLZidbIv8fgMYeRQOTOI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZnJlZWltYWdl/cy5jb20vaW1hZ2Vz/L2xhcmdlLXByZXZp/ZXdzL2M0ZS90cmFu/cXVpbC1taW5pbWFs/aXN0LWdyYWRpZW50/LWJhY2tncm91bmQt/MDQxMC01Njk3Nzgz/LmpwZz9mbXQ"),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              // Question Number
              Row(
                children: [
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.cyan,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),

              // Question
              Center(
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: Text(
                    "${(currentQuestionIndex)+1}) ${allQuestions[currentQuestionIndex]["question"]} ",
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 245, 136, 2),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // Option 1
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 0;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "A.${allQuestions[currentQuestionIndex]['options'][0]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // Option 2
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 1;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "B.${allQuestions[currentQuestionIndex]['options'][1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // Option 3
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 2;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "C.${allQuestions[currentQuestionIndex]['options'][2]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // Option 4
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 3;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "D.${allQuestions[currentQuestionIndex]['options'][3]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                child: Text(
                  "Score : $score",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 253, 5, 17),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 231, 9, 9),
            ),
          ),
          toolbarHeight: 150,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                "CONGRATULATIONS",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 49, 224, 18),
                ),
              ),
              const SizedBox(height: 60),
              Image.network(
                "https://imgs.search.brave.com/oXa8NTylgB_YQsM1LjYAZtLcJlQ9_Iq12qZx4gkH0dg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU3/NTkwMzYwL3Bob3Rv/L3Ryb3BoeS13aXRo/LXBhdGguanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPThnSi02/eDZFNDA1dS1CSFZx/T21DT29nWjVGb0JL/THE2b1FEYUNGVUJt/V1E9",
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              Text(
                "Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 23, 213, 210),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  currentQuestionIndex = 0;
                  selectedAnswerIndex = -1;
                  score = 0;
                  questionPage = true;
                  setState(() {});
                },
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 164, 7),
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
