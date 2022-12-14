import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.border_all,
            text: "General",
          ),
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.car_rental,
            text: "Transport",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.cloud,
            text: "Bill",
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.shop,
            text: "Shopping",
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.movie,
            text: "Entertaiment",
          ),
          _SingleCard(
            color: Colors.purple.shade800,
            icon: Icons.food_bank,
            text: "Grocery",
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: _CardContent(color: color, icon: icon, text: text),
          ),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 18),
        )
      ],
    );
  }
}
