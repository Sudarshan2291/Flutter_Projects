import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:intl/intl.dart';
import "todo_model.dart";

class TodoUI extends StatefulWidget {
  const TodoUI({super.key});
  @override
  State createState() => _TodoUIState();
}

class _TodoUIState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  //Submit Logic
  void submitLogic(bool isEdit, ToDoModel? obj) {
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        dateController.text.isNotEmpty) {
      if (isEdit) {
        obj!.title = titleController.text;
        obj.description = descriptionController.text;
        obj.date = dateController.text;
      } else {
        // add button logic
        listTodoCards.add(
          ToDoModel(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text),
        );
      }
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
      setState(() {});
    }
    Navigator.of(context).pop();
  }

  void showBottomSheet(bool isEdit, [ToDoModel? obj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 12,
            left: 12,
            right: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Create To-Do",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: dateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.calendar_month_outlined,
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2025),
                  );
                  String formattedDate = DateFormat.yMMMd().format(pickedDate!);
                  setState(() {
                    dateController.text = formattedDate;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromRGBO(0, 139, 148, 1)),
                  ),
                  onPressed: () {},
                  child: GestureDetector(
                    onTap: () {
                      submitLogic(isEdit, obj);
                    },
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<ToDoModel> listTodoCards = [];
  List<Color> color = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: listTodoCards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: color[index % 4],
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Image.asset('assets/image/Group 42.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listTodoCards[index].title,
                              style: GoogleFonts.quicksand(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              listTodoCards[index].description,
                              style: GoogleFonts.quicksand(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 10.0, bottom: 10.0, left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        listTodoCards[index].date,
                        style: GoogleFonts.quicksand(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          titleController.text = listTodoCards[index].title;
                          descriptionController.text =
                              listTodoCards[index].description;
                          dateController.text = listTodoCards[index].date;
                          showBottomSheet(true, listTodoCards[index]);
                        },
                        child: const Icon(Icons.edit_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          listTodoCards.removeAt(index);
                          setState(() {
                            ScaffoldMessenger.of(context).showSnackBar(
                              snackBarAnimationStyle : AnimationStyle(
                                reverseDuration: Durations.short2
                              ),
                              const SnackBar(
                                content: Text("To Do Deleted Successfully"),
                              ),
                            );
                          });
                        },
                        child: const Icon(Icons.delete_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1)),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          titleController.clear();
          descriptionController.clear();
          dateController.clear();
          showBottomSheet(false);
        },
      ),
    );
  }
}
