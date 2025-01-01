import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.,
      spacing: 16,
      children: [
        CircleAvatar(
          radius: 25,
          child: ClipOval(
            child: Image.asset("assets/andrea-avatar.png"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              spacing: 5,
              children: [
                Text(
                  "Andrea Bizzotto",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                VectorIcon(
                  asset: SvgAsset.heartBlue,
                  height: 18,
                ),
                VectorIcon(
                  asset: SvgAsset.verified,
                  height: 18,
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "@biz84",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                // const SizedBox(width: 8),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(80, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // alignment: Alignment.centerLeft,

                      overlayColor: Colors.transparent),
                  onPressed: () {},
                  child: const Text(
                    "Follow",
                  ),
                )
              ],
            ),
          ],
        ),
        const Spacer(),
        const VectorIcon(
          asset: SvgAsset.x,
        )
      ],
    );
  }
}
