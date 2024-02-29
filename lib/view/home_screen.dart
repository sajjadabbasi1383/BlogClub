import 'package:blog_club/model/story.dart';
import 'package:flutter/material.dart';

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
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff376AED),
                                      Color(0xff49B0E2),
                                      Color(0xff9CECFB),
                                    ],
                                    begin: Alignment.topCenter
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  margin: const EdgeInsets.all(2),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(stories[index].imageFileName),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Text(stories[index].name,style: Theme.of(context).textTheme.bodyMedium,))
                        ],
                      ),
                    );
                  },),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
