import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int contSpaten = 0;
  int contAguaGas = 0;
  int contAguaSem = 0;
  int contGato = 0;
  int contCuba = 0;

  void zerarContador() {
    setState(() {
      contSpaten = 0;
      contAguaGas = 0;
      contAguaSem = 0;
      contGato = 0;
      contCuba = 0;
    });
  }

  void incrementaSpaten() {
    setState(() {
      contSpaten++;
    });
  }

  void decrementaSpaten() {
    if (contSpaten > 0) {
      setState(() {
        contSpaten--;
      });
    }
  }

  void incrementaAguaGas() {
    setState(() {
      contAguaGas++;
    });
  }

  void decrementaAguaGas() {
    if (contAguaGas > 0) {
      setState(() {
        contAguaGas--;
      });
    }
  }

  void incrementaAguaSem() {
    setState(() {
      contAguaSem++;
    });
  }

  void decrementaAguaSem() {
    if (contAguaSem > 0) {
      setState(() {
        contAguaSem--;
      });
    }
  }

  void incrementaGato() {
    setState(() {
      contGato++;
    });
  }

  void decrementaGato() {
    if (contGato > 0) {
      setState(() {
        contGato--;
      });
    }
  }

  void incrementaCuba() {
    setState(() {
      contCuba++;
    });
  }

  void decrementaCuba() {
    if (contCuba > 0) {
      setState(() {
        contCuba--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Controle de bebidas do BT 45'",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 4,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade700, Colors.green.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                zerarContador();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cerveja",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              incrementaSpaten();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            iconSize: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            contSpaten.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              decrementaSpaten();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Água COM Gás",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              incrementaAguaGas();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            iconSize: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            contAguaGas.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              decrementaAguaGas();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Água SEM Gás",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              incrementaAguaSem();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            iconSize: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            contAguaSem.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              decrementaAguaSem();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Isotônico",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              incrementaGato();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            iconSize: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            contGato.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              decrementaGato();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cuba",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              incrementaCuba();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.green,
                            iconSize: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            contCuba.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              decrementaCuba();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("@copyright © 2024 - BT 45'"),
            ],
          ),
        ),
      ),
    );
  }
}
