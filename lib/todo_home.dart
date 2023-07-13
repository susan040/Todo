import 'package:flutter/material.dart';

import 'data/dummy_data.dart';
import 'model/todo_model.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Todo Home'),
    //   ),
    //   body: const Center(
    //     child: Text(
    //       'Todo Home',
    //       style: TextStyle(fontSize: 24),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.home),
        backgroundColor: Colors.amber,
        title: const Text('Todo Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            Todo todo = todoList[index];
            return TodoList(
              name: todo.title,
              description: todoList[index].status,
              colors: Colors.primaries[index % Colors.primaries.length],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Title",
                            hintText: "Title",
                          ),
                        ),
                        const Spacer(),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Title",
                            hintText: "Title",
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.name,
    required this.description,
    required this.colors,
  });

  final String name;
  final String description;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: colors,
      title: Text(name),
      subtitle: Text("desc: $description"),
    );
  }
}
