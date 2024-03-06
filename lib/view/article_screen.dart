import 'package:blog_club/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 100,
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 30,
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 35,
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Four things Every Woman Needs To Know",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/img/stories/story_5.jpg",
                                width: 55,
                                height: 55,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Richard Gervain",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("2m ago"),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.send_outlined,
                                  color: primaryColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.bookmark_outline,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
