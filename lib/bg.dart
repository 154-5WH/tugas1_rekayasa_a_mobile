import 'package:flutter/material.dart';

class Bg extends StatefulWidget {
  const Bg({Key? key}) : super(key: key);

  @override
  State<Bg> createState() => _BgState();
}

class _BgState extends State<Bg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
