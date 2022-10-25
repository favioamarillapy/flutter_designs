import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/landscape.jpg")),
          _TitleWidget(),
          _SocialWidget(),
          _DescriptionWidget()
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    );
  }
}

class _SocialWidget extends StatelessWidget {
  const _SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialIconWidget(icon: Icons.call, text: "CALL"),
          SocialIconWidget(icon: Icons.map, text: "ROUTE"),
          SocialIconWidget(icon: Icons.share, text: "SHARE"),
        ],
      ),
    );
  }
}

class SocialIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const SocialIconWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue.shade800,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.blue.shade800, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
          "Oeschinen Lake, with pristine nature and turquoise blue waters, is literally heaven on earth. High mountains rise on all sides of the lake. And Oeschinensee is like a sparkling gem in the centre. The lake is at the foot of Mountains – Blüemlisalp, Oeschinenhorn, Fründenhorn and Doldenhorn. Osechinen Lake is fed by underwater streams as well as glacial waterfalls falling from the top of these mountains. Make sure to check the webcam for weather conditions before you go here. And by the way, Oeschinen Lake is part of the UNESCO World Heritage Sites list.",
          textAlign: TextAlign.justify),
    );
  }
}
