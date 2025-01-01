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

    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeadSection(),
        BodySection(),
        SizedBox(height: 10),
        Row(
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
        Divider(),
        Row(
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
        // Row(
        //   mainAxisSize: MainAxisSize.max,
        //   children: [
        //     Container(
        //       padding: const EdgeInsets.symmetric(
        //         vertical: 10,
        //       ),
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //           color: Colors.black12,
        //         ),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: const Text("Read 50 replies"),
        //     ),
        //   ],
        // )
      ],
    );
  }
}
