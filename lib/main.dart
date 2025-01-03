import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

import 'package:twitter_embed_card/widgets/body_section.dart';
import 'package:twitter_embed_card/widgets/head_section.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          // Use Center as layout has unconstrained width (loose constraints),
          // together with SizedBox to specify the max width (tight constraints)
          // See this thread for more info:
          // https://twitter.com/biz84/status/1445400059894542337
          child: Center(
            child: SizedBox(
              width: 600, // max allowed width
              child: TwitterEmbedCard(),
            ),
          ),
        ),
      ),
    );
  }
}

class TwitterEmbedCard extends StatelessWidget {
  const TwitterEmbedCard({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     const Text(
    //       'Use the icons below to build the completed layout',
    //       textAlign: TextAlign.center,
    //     ),
    //     const SizedBox(height: 32.0),
    //     Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: SvgAsset.values
    //           .map((asset) => VectorIcon(
    //                 asset: asset,
    //                 height: 50,
    //               ))
    //           .toList(),
    //     ),
    //   ],
    // );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeadSection(),
        const BodySection(),
        const SizedBox(height: 10),
        const Row(
          children: [
            Text(
              "10:00 AM · 1 Jan, 2022",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            Spacer(),
            VectorIcon(
              asset: SvgAsset.info,
              height: 18,
            ),
          ],
        ),
        const Divider(),
        const Row(
          children: [
            VectorIcon(
              asset: SvgAsset.heartRed,
              height: 18,
            ),
            SizedBox(width: 5),
            Text("1000"),
            SizedBox(width: 20),
            VectorIcon(
              asset: SvgAsset.comment,
              height: 18,
            ),
            SizedBox(width: 5),
            Text("Reply"),
            SizedBox(width: 20),
            VectorIcon(
              asset: SvgAsset.link,
              height: 18,
            ),
            SizedBox(width: 5),
            Text("Copy Link"),
          ],
        ),
        const SizedBox(height: 16),
        Material(
          shape: const StadiumBorder(
              side: BorderSide(
            color: Colors.black,
            width: 1,
          )),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Read 50 replies",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
