import 'package:demo_project/utility/assets_utility.dart';
import 'package:demo_project/utility/color_utility.dart';
import 'package:demo_project/utility/common_function.dart';
import 'package:demo_project/utility/string_utility.dart';
import 'package:demo_project/utility/text_style_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({Key? key}) : super(key: key);

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: browseImage, height: 100, width: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Browse',
                                style: FontStyleUtility.blackFont24W700,
                              ),
                              heightBox(5),
                              Text(
                                'Listed projects',
                                style: FontStyleUtility.blackFont16W400
                                    .copyWith(color: colorGray),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: companyImage, height: 100, width: 100),
                          Text(
                            'Short & Filter Listing',
                            style: FontStyleUtility.blackFont18W500
                                .copyWith(color: colorPrimary),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                heightBox(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(CupertinoIcons.search, color: colorPrimary),
                    widthBox(10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Drainage cleaning in ',
                            style: FontStyleUtility.blackFont16W400),
                        TextSpan(
                            text: 'Plumbing',
                            style: FontStyleUtility.blackFont16W600
                                .copyWith(color: colorPrimary))
                      ]),
                    )
                  ],
                ),
                heightBox(20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'found ', style: FontStyleUtility.blackFont16W700),
                  TextSpan(
                      text: '132 results ',
                      style: FontStyleUtility.blackFont16W700
                          .copyWith(color: colorLightPurple)),
                  TextSpan(
                      text: 'in drainage',
                      style: FontStyleUtility.blackFont16W700),
                ])),
                heightBox(5),
                Text('plumber in \'Seattle Washington\' ',
                    style: FontStyleUtility.blackFont12W400),
                heightBox(20),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        margin: const EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorWhite),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0)),
                                        color: colorLightWhite,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 15),
                                      // width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.verified,
                                            size: 16.0,
                                            color: colorGray,
                                          ),
                                          widthBox(10),
                                          Text(CommonText.individual,
                                              style: FontStyleUtility
                                                  .blackFont12W500),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0)),
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 16),
                                      child: Text(CommonText.fixed,
                                          style:
                                              FontStyleUtility.whiteFont12W700),
                                    ),
                                  ],
                                ),
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 25),
                                    decoration: const BoxDecoration(
                                      color: colorLightPurple,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(CommonText.avgBid,
                                                style: FontStyleUtility
                                                    .whiteFont12W500),
                                            Text('\$ 750.00',
                                                style: FontStyleUtility
                                                    .whiteFont12W700),
                                          ],
                                        ),
                                        widthBox(15),
                                        Column(
                                          children: [
                                            Text(CommonText.daysLeft,
                                                style: FontStyleUtility
                                                    .whiteFont12W500),
                                            Text('9 days',
                                                style: FontStyleUtility
                                                    .whiteFont12W700),
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            heightBox(15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        color: colorLightPurple,
                                      ),
                                      widthBox(8),
                                      Text(
                                        '4.7 (147 reviews)',
                                        style: FontStyleUtility.blackFont12W500,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Full bathroom hardware installation for...',
                                    style: FontStyleUtility.blackFont13W600,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ]),
        ),
      ),
    );
  }
}
