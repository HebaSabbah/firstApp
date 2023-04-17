import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [
          customColumn1(context),
          customColumn2(context),
          customColumn1(context),
          customColumn2(context),
          customColumn1(context),
          customColumn2(context),
          customColumn1(context),
          customColumn2(context),
        ],
      ),
    );
  }

  Widget customColumn1(BuildContext context) {
    return Column(
      children: [
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
      ],
    );
  }

  Widget customColumn2(BuildContext context) {
    return Column(
      children: [
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
        myOunCustomContainer(context, Colors.grey),
        myOunCustomContainer(context, Colors.black),
      ],
    );
  }

  Widget myOunCustomContainer(BuildContext context, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
