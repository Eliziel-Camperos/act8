import 'package:act8/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://media.npr.org/assets/bakertaylor/covers/a/astro-boy-omnibus-1/9781616558604_custom-5d404d468019a3529614da5ff50342abb463e395.jpg?s=300&c=85&f=webp'), // Imagen de fondo
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black, Colors.black.withOpacity(.3)],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                                1,
                                Text(
                                  "Eliziel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                )),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.2,
                                    Text("42 Comics",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16))),
                                SizedBox(width: 50),
                                FadeAnimation(
                                    1.3,
                                    Text("180K Fans",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1.6,
                            Text(
                              "Eliziel is a mysterious and powerful hero who commands water and metal. With the ability to summon blades and heal others, he defends the multiverse against chaos alongside his alternate self, BE.",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            )),
                        SizedBox(height: 40),
                        FadeAnimation(
                            1.6,
                            Text("First Appearance",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 10),
                        FadeAnimation(
                            1.6,
                            Text("Comic #1 - Shadows of Origin",
                                style: TextStyle(color: Colors.grey))),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1.6,
                            Text("Abilities",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 10),
                        FadeAnimation(
                            1.6,
                            Text(
                                "Hydrokinesis, Sword Invocation, Metal Manipulation, Healing",
                                style: TextStyle(color: Colors.grey))),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1.6,
                            Text("Gallery",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1.8,
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  makeVideo(
                                      image:
                                          'https://images.amcnetworks.com/amctv.la/wp-content/uploads/2017/01/Comics.jpg'),
                                  makeVideo(
                                      image:
                                          'https://media.npr.org/assets/bakertaylor/covers/manually-added/action-comics_custom-2f64bdcd6b7216731303a335ba6f203e218537f0.jpg?s=300&c=85&f=webp'),
                                  makeVideo(
                                      image:
                                          'https://m.media-amazon.com/images/I/71DuBzWmKJL._SY466_.jpg'),
                                ],
                              ),
                            )),
                        SizedBox(height: 120),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                2,
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700],
                  ),
                  child: Center(
                      child: Text("Follow",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo({required String image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3)
              ],
            ),
          ),
          child: Align(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 70),
          ),
        ),
      ),
    );
  }
}
