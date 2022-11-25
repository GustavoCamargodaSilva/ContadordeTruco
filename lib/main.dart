import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count_1 = 0;
  int count_2 = 0;

  void increment1() {
    setState(() {
      if(count_1 < 12){
      count_1++;}
    });
  }

  void increment2() {
    setState(() {
      if(count_2 < 12){
      count_2++;}
    });
  }

  void reset(){
    setState(() {
      count_1 = 0;
      count_2 = 0;
    });
  }

  bool get isFull2 => count_2 == 0;

  bool get isFull1 => count_1 <= 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundo4.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'ELES',
                  style: TextStyle(
                    fontFamily: 'Indie',
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'NÓS',
                  style: TextStyle(
                    fontFamily: 'Indie',
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    count_1.toString(),
                    style: const TextStyle(
                      fontFamily: 'Indie',
                      fontSize: 130,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    count_2.toString(),
                    style: const TextStyle(
                      fontFamily: 'Indie',
                      fontSize: 130,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      increment1();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.black,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      increment2();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.black,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      reset();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontFamily: 'Indie',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
