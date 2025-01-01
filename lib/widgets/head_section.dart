import 'package:flutter/material.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        CircleAvatar(
          radius: 25,
          child: ClipOval(
            child: Image.asset("assets/andrea-avatar.png"),
          ),
        ),
        const Column(
          children: [],
        )
      ],
    );
  }
}
