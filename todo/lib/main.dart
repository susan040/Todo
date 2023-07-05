import 'package:flutter/material.dart';
import 'package:todo/data/data.dart';
import 'package:todo/orders.dart';

import 'model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shadowColor: Colors.black,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/me.jpg"
                  )
                  )),
                ),
                const SizedBox(height: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Susan Thapa", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("susan******@gmail.com", style: TextStyle(fontSize: 11, color: Colors.grey))
                    ],
                  ),
                const SizedBox(height: 16),
                    
                const Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 20),
                  child: Divider(
                    color: Color.fromARGB(255, 157, 157, 157),
                  ),
                ),
              
                Row(
                  children: [
                    const Icon(Icons.home_outlined),
                    const SizedBox(width: 15),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder:(context){
                          return const Order();
                        }));
                      }, 
                      child: const Text("Order", style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: ListView.builder(itemCount: toDoData.length, itemBuilder: (context, index) {
        ToDo toDo = toDoData[index];
        return Work(name: toDo.name, status: toDo.status);
      },),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            context: context, 
            builder:  ((context) => 
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    key: keys,
                    child: Column(
                    children: [
                      TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            hintText: ("Enter..."),
                            
                          ),
                          validator: (value){
                            if (value!.isEmpty){
                              return "This field is required";
                            }
                            return null;
                          }
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            hintText: ("Enter..."),
                            
                          ),
                          validator: (value){
                            if (value!.isEmpty){
                              return "This field is required";
                            }
                            return null;
                          }
                        ),  
                    ],
                  )),
                ),
                
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    onPressed: (){
                  }, child: const Text("Add", style: TextStyle(color: Colors.white, fontSize: 18),)),
                )
              ],

          )));
        },
        
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Work extends StatelessWidget {
  const Work({
    super.key, required this.name, required this.status,
  });
  final String name;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(status, style: const TextStyle(fontSize: 16),),
        ]
      ),
    );
  }
}
