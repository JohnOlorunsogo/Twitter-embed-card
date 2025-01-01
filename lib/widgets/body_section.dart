import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        spacing: 16,
        children: [
          const Text(
            """Did you know?\n\nWhen you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.
                \n\nBut there's a better way that lets you depend only on the properties you care about (and minimize unnecessary rebuilds). 👇🏾""",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset("assets/media-query-banner.jpg"),
          )
        ],
      ),
    );
  }
}
