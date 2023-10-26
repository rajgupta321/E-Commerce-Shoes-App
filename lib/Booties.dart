import 'package:animate_do/animate_do.dart';
import 'Loafers.dart';
import 'Shoes.dart';
import 'Soccer.dart';
import 'main.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Booties()
    )
);

class Booties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes", style: TextStyle(color: Colors.black, fontSize: 25),),
        // brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(milliseconds: 1000),
                        child: Container(
                          margin: EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text("Booties", style: TextStyle(fontSize: 17),),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(milliseconds: 1200), child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white60),
                            shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(20) )) ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Soccer()),
                            );
                          },
                          child: Text('Soccers',style: TextStyle(fontSize: 14),),
                        ),
                      )
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(milliseconds: 1200), child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white60),
                            shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(20) )) ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          child: Text('Sneakers',style: TextStyle(fontSize: 12),),
                        ),
                      )
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(milliseconds: 1200), child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white60),
                            shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(20) )) ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Loafers()),
                            );
                          },
                          child: Text('loafers',style: TextStyle(fontSize: 14),),
                        ),
                      )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FadeInUp(duration: Duration(milliseconds: 1500),
                  child: makeItem(image: 'assets/images/Bootie_baby.jpg',
                      tag: 'red', context: context,category: 'Baby')  ),
              FadeInUp(duration: Duration(milliseconds: 1600),
                  child: makeItem(image: 'assets/images/Boot_leather.jpg',
                      tag: 'blue', context: context,category: 'Men')),
              FadeInUp(duration: Duration(milliseconds: 1700),
                  child: makeItem(image: 'assets/images/womens_boots.webp',
                    tag: 'white', context: context,category: 'Ladies',)),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context, category,}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Shoes(image: image, tag: tag,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    offset: Offset(0, 10)
                )
              ]
          ), // ... (existing code)

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(duration: Duration(milliseconds: 1000),
                          child: Text("Boots", style: TextStyle(
                              color: Colors.redAccent.shade700, fontSize: 30, fontWeight: FontWeight.bold),)),

                    ],
                  ),
                ),
                  // ... (existing code)
                ],
              ),
              Text(
                category, // Display category name here
                style: TextStyle(color: Colors.pink, fontSize: 30,),
              ),
              Text("100\$", style: TextStyle(color: Colors.deepOrange, fontSize: 40, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
