import 'file:///D:/Razrabotka/Labos/Lab6/e_com/lib/Activities/add_products.dart';
import 'package:e_com/Component/product.dart';
import "package:flutter/material.dart";
import "package:scoped_model/scoped_model.dart";
import 'Cart.dart';
import '../ScopeManage.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget{
  AppModel appModel;
  static final String route = "Home-route";

  Home({this.appModel});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/coat.jpg'),
          AssetImage('images/combib.jpg'),
          AssetImage('images/costume1.jpg'),
          AssetImage('images/dress1.jpg'),
          AssetImage('images/jeans.jpg'),
          AssetImage('images/midi_dress.jpg'),
          AssetImage('images/midi_skirt.jpg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce"),
        elevation: 0.0,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
              ),
              Positioned(
                child: ScopedModelDescendant<AppModel>(
                  builder: (context,child,model){
                    return Container(
                      child: Text((model.cartListing.length > 0) ? model.cartListing.length.toString() : "",
                        textAlign: TextAlign.center,style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Conde daouda'),
              accountEmail: Text('coursavaya@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),

              decoration: new BoxDecoration(
                  color: Colors.indigo
              ),

            ),
            //body

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Home()));
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {
              },
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProduct()));
              },
              child: ListTile(
                title: Text('Add product'),
                leading: Icon(Icons.add_to_photos, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
