import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/Austria.dart';
import 'package:flutter_custom_painter/Austrilia.dart';
import 'package:flutter_custom_painter/Bangladesh.dart';
import 'package:flutter_custom_painter/Belgium.dart';
import 'package:flutter_custom_painter/barbados.dart';

void main() {
  runApp(TopName());
}

class TopName extends StatelessWidget {
  const TopName({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom painter',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            'Custom Painter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: .bold,
            ),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 220,
                      child: CustomPaint(painter: Bangladesh()),
                    ),

                    Text(
                      "Bangladesh",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(width: 12),

                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 220,
                      child: CustomPaint(painter: Austria()),
                    ),

                    Text(
                      "Austria",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(width: 12),

                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 220,
                      child: CustomPaint(painter: Belgium()),
                    ),

                    Text(
                      "Belgium",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(width: 12),

                Column(
                  children: [
                    SizedBox(
                      width: 220,
                      height: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomPaint(
                            size: const Size(220, 150),
                            painter: Barbados(),
                          ),
                          Image.asset("assets/images/svg.png", height: 70),
                        ],
                      ),
                    ),

                    Text(
                      "Barbados",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 220,
                      child: CustomPaint(painter: Austrilia()),
                    ),

                    Text(
                      "England",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
