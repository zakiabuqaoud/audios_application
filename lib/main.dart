import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  Widget getComplexRow(String firstName, String description, IconData icon ){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(firstName, style: const TextStyle(fontSize: 16,),),
              Text(description, style: const TextStyle(fontSize: 16,),),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.grey),
          ),

        ],

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.save, color: Colors.grey,),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(8, 8),
                        blurRadius: 20,
                        spreadRadius: 5.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-8, -8),
                        blurRadius: 40,
                        spreadRadius: 10.0,
                      ),
                    ],
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black87,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://img.freepik.com/free-vector/sticker-template-cat-cartoon-character_1308-73786.jpg?w=2000",
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.threesixty, color: Colors.grey,),
                ),
              ],
            ),
            const SizedBox(
              height: 68,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                getComplexRow("Hol", "Flume", Icons.play_arrow),
                getComplexRow("Never Be Like You", "Flume x Kia", Icons.play_arrow),
                getComplexRow("Unavailable", "David", Icons.square),
                getComplexRow("Number & Getting Colder", "Flume x Kuc", Icons.play_arrow),
                getComplexRow("Say it", "Flume", Icons.play_arrow),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.keyboard_double_arrow_left, color: Colors.grey,),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.pause, color: Colors.grey,),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.keyboard_double_arrow_right, color: Colors.grey,),
                ),


              ],
            )

          ],
        ),
      ),
    );
  }
}
