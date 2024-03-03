import 'package:blog_club/constant.dart';
import 'package:blog_club/model/post_model.dart';
import 'package:blog_club/model/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/category_slider.dart';
import '../widget/story_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Sajjad!",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Image.asset(
                    "assets/img/icons/notification.png",
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Explore today's",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return StoryItem(
                      story: stories[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CategorySlider(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {}, child: const Text("More"))
                ],
              ),
              ListView.builder(
                itemCount: posts.length,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(blurRadius: 10, color: Color(0x1a5282FF))
                        ]),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              posts[index].imageFileName,
                              width: 120,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  posts[index].caption,
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  posts[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      CupertinoIcons.hand_thumbsup,
                                      size: 16,
                                      color: greyColor,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      posts[index].likes,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    const Icon(
                                      CupertinoIcons.clock,
                                      size: 16,
                                      color: greyColor,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      posts[index].time,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    Expanded(child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        posts[index].isBookmarked?CupertinoIcons.bookmark_fill:
                                        CupertinoIcons.bookmark,
                                        size: 17,
                                        color: greyColor,
                                      ),
                                    ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
