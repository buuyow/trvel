import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_important_outlined),
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: CarouselOne(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.green[900],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.location_on),
                  ),
                  Text("All")
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Category();
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Tips",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "EXPLORE",
                        style:
                            TextStyle(color: Color.fromARGB(221, 66, 65, 65)),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return TopTips();
                    }),
                Text("Meelaha cagaaran"),
                Row(
                  children: [
                    Text("\$ 200"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TopTips extends StatelessWidget {
  const TopTips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      child: Image(
        image: NetworkImage("https://i.redd.it/on7nrr9578l61.jpg"),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image(
            image: NetworkImage(
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/51/7a/5f/liido-beach-somalia-2016.jpg?w=500&h=-1&s=1"),
            width: 25,
            height: 25,
          ),
          Text("xeebaha")
        ],
      ),
    );
  }
}

class CarouselOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      width: 100.0,
      child: AnotherCarousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.bottomCenter,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: [
          NetworkImage(
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/51/7a/5f/liido-beach-somalia-2016.jpg?w=500&h=-1&s=1'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcZXbY03u3zVzVaWZhWMkSZfsSKWnQvxHYi5SQqW_bq7n6bCVoLAQN6uJE1K6wWVxz-jQ&usqp=CAU'),
          NetworkImage(
              'https://thoth.pickvisa.com/wp-content/uploads/2021/12/bab8e6888eeb4ceb8df82aa6346c24d8.jpg'),
          NetworkImage('https://i.redd.it/on7nrr9578l61.jpg'),
        ],
      ),
    );
  }
}
