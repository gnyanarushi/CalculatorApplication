import 'package:caluculator/calculator/converter_page.dart';
import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String inputString = "";

  void result() {
    String exp = inputString;
    setState(() {
      try {
        final evaluator = const ExpressionEvaluator();
        final expression = Expression.parse(exp);
        final res = evaluator.eval(expression, {}).toString();
        inputString = res;
      } catch (e) {
        inputString = "Error";
      }    
    });
  }

  void addCharacter(String s) {
    setState(() {
      inputString += s;
    });
  }

  void clearAll() {
    setState(() {
      inputString = "";
    }); 
  } 
  void clearOne() {
    setState(() {
      if (inputString.isNotEmpty) {
        inputString = inputString.substring(0, inputString.length - 1);
      } else {
        print("String is empty");
      }
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment:       MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.compress_sharp, color: Colors.white),
            Text(
              "Calculator",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                 
              ),
            ),
            GestureDetector(
              child: Text(
                "Converter",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color.fromARGB(119, 238, 226, 226),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConverterPage()));
              },
            ),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.values[5],
          children: [
            Container(
              height: 50,
              width: 350,
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: Text(
                inputString,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    clearAll();
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "C",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    clearOne();
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Icon(Icons.backspace, color: Colors.orange[600]),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("%");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "%",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("/");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "/",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("7");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "7",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("8");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "8",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("9");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "9",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("*");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "*",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("4");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("5");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("6");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("-");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("1");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("2");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("3");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("+");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: null,
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.transfer_within_a_station_outlined,
                        color: Colors.orange[600],
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter("0");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    addCharacter(".");
                  },
                  backgroundColor: const Color.fromARGB(127, 127, 127, 127),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    result();
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 221, 149, 6),
                    ),
                    child: Center(
                      child: Text(
                        "=",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
