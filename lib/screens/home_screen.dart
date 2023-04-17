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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: CarouselOne(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 80,
                      width: 245,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Cat();
                          }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
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
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [TopTips(), TopTips(), TopTips(), TopTips()],
                ),
              )
              // Expanded(
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 5,
              //       itemBuilder: (BuildContext context, int index) {
              //         return TopTips();
              //       }),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.show_chart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.show_chart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.tab)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            // Expanded(child: IconButton(icon: Icon(Icons.home)),),
            // Expanded(child: IconButton(icon: Icon(Icons.show_chart)),),
            // Expanded(child: new Text('')),
            // Expanded(child: IconButton(icon: Icon(Icons.tab)),),
            // Expanded(child: IconButton(icon: Icon(Icons.settings)),),
          ],
        ),
      ),
    );
  }
}

class Cat extends StatelessWidget {
  const Cat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 60,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw7DTNUGJ8XUyTA-l21j9K35Z8hi5BZI30cw&usqp=CAU"),
            ),
            SizedBox(
              width: 10,
            ),
            Text("All")
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage("https://i.redd.it/on7nrr9578l61.jpg"),
                ),
                Text("Meelaha cagaaran"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 200"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          // color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
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
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Image(
                  image: NetworkImage(
                      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/51/7a/5f/liido-beach-somalia-2016.jpg?w=500&h=-1&s=1"),
                  width: 25,
                  height: 25,
                ),
                Text("xeebaha")
              ],
            );
          }),
    );
  }
}

class CarouselOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      width: double.infinity,
      child: AnotherCarousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: const Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.bottomCenter,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        borderRadius: true,
        radius: const Radius.circular(30),
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
