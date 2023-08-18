import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_ex/next.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 大学だお',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 110, 34, 240)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter 大学だ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final myFocusNode = FocusNode();
  late String name;
  final myController = TextEditingController();
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            const Icon(Icons.add),
            const Icon(Icons.share),
          ],
        ),
        body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
        // child: ListView(
        //   children: <Widget>[
        //     ListTile(
        //       leading: Icon(Icons.map),
        //       title: Text('Map'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.photo_album),
        //       title: Text('Album'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Phone'),
        //     ),
        //   ],
        // ),
      ),
        // body: Container(
        //   width: double.infinity,
        //   child: Column(
        //     children: [
        //       TextField(
        //         decoration: InputDecoration(
        //           hintText: '名前',
        //         ),
        //         onChanged: (Text) {
        //           name = Text;
        //         },
        //       ),
        //       TextField(
        //         controller: myController,
        //         decoration: InputDecoration(
        //           hintText: '趣味',
        //         ),
        //       ),
        //       ElevatedButton(
        //         child: Text('新規登録'),
        //         onPressed: () {
        //           showDialog(
        //             context: context,
        //             builder: (_) {
        //               return AlertDialog(
        //                 title: Text("This is the title"),
        //                 content: Text(myController.text),
        //                 // actions: [
        //                 //   FlatButton(
        //                 //     child: Text("Cancel"),
        //                 //     onPressed: () => Navigator.pop(context),
        //                 //   ),
        //                 //   FlatButton(
        //                 //     child: Text("OK"),
        //                 //     onPressed: () => print('OK'),
        //                 //   ),
        //                 // ],
        //               );
        //             },
        //           );

        //           // TODO: 新規登録
        //           // final hobbyText = myController.text;
        //         },
        //       ),
        //     ],
        //   ),
        //   // child: Column(
        //   //   children: [
        //   //     TextField(),
        //   //     TextField(
        //   //       focusNode: myFocusNode,
        //   //     ),
        //   //     ElevatedButton(
        //   //     style: ButtonStyle(
        //   //     ),
        //   //     onPressed: () {
        //   //       myFocusNode.requestFocus();
        //   //     },
        //   //     child: Text('ElevatedButton'),
        //   //     ),
        //   //   ],
        //   // )
        // )
        // body: Container(
        //   width: double.infinity,
        //   child: TextField(
        //     decoration: InputDecoration(
        //       border: InputBorder.none,
        //       hintText: 'Enter a search term',
        //     ),
        //     // autofocus: true,//常時キーボード表示
        //   ),
        // ),
        // body: Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         width: double.infinity,
        //         child: Text('KBOYさん',
        //         textAlign: TextAlign.center,
        //         ),
        //       ),
        //       Text(
        //         'こkんにちは',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           fontSize:50
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
// ignore_for_file: prefer_const_constructors