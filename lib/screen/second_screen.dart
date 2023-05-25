
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  double m = 0.3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],

                ),
                child: const Icon(Icons.arrow_back),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: const Icon(Icons.padding_rounded),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end
            ,
            children: [
              Container(
                width: 200 ,
                height: 200,
                decoration:
                BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black87,
                      offset: Offset(-8,-8),
                      blurRadius: 40,
                      // spreadRadius: 10.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(8,8),
                      blurRadius: 40,
                      // spreadRadius: 10.0,
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
              const SizedBox(height: 30,),
              const Text("data"),
              const Text("data"),
              const SizedBox(height: 30,),
              Slider(value: m, onChanged: (val){
                setState(() {
                  m = val;
                });
              })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.pause),
              Icon(Icons.play_arrow),
              Icon(Icons.play_arrow_outlined),

            ],
          )

        ],
      ),
    );
  }
}
