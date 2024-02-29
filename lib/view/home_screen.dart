import 'package:blog_club/model/story.dart';
import 'package:flutter/material.dart';

import '../widget/story_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                  Text("Hi, Sajjad!",style: Theme.of(context).textTheme.titleMedium,),
                  Image.asset("assets/img/icons/notification.png",width: 35,height: 35,),
                ],
              ),
              const SizedBox(height: 10,),
              Text("Explore today's",style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: 20,),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return StoryItem(story: stories[index],);
                  },),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

