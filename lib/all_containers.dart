import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _customBorders(),
        _borderRadius(),
        _customBorderRadius(),
        _gradient(),
        _boxShadow(),
        _backgroundImage()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(
              color: Colors.green,
              width: 4.0,
            )),
      ),
    );
  }

  _customBorders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Colors.blueAccent,
            border: Border(
                top: BorderSide(color: Colors.green, width: 4.0),
                bottom: BorderSide(color: Colors.red, width: 5.0))),
      ),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
    );
  }

  _customBorderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ))),
    );
  }

  _gradient() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Colors.blue,
              Colors.red,
              Colors.green,
            ])),
      ),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[850]!.withOpacity(0.29),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]),
      ),
    );
  }

  _backgroundImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[850]!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(image: AssetImage('assets/fondo.jpg')),
        ),
        child: const Center(
          child: Text(
            'Hola Mundo',
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
