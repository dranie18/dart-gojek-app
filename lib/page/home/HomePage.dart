import 'package:flutter/material.dart';
import 'package:gojek/Model.dart';
import 'package:gojek/constant.dart';
import 'package:gojek/landing/AppBar.dart';
import 'package:gojek/services/Main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AppServices> _appServiceList = [];

  @override
  void initState() {
    super.initState();

    _appServiceList.add(new AppServices(
      image: Icons.directions_bike,
      color: GojekPalette.menuRide,
      title: "GO-RIDE",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.local_car_wash,
      color: GojekPalette.menuCar,
      title: "GO-CAR",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.directions_car,
      color: GojekPalette.menuBluebird,
      title: "GO-BLUEBIRD",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.restaurant,
      color: GojekPalette.menuFood,
      title: "GO-FOOD",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.next_week,
      color: GojekPalette.menuSend,
      title: "GO-SEND",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.local_offer,
      color: GojekPalette.menuDeals,
      title: "GO-DEALS",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.phonelink_ring,
      color: GojekPalette.menuPulsa,
      title: "GO-PULSA",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.apps,
      color: GojekPalette.menuOther,
      title: "OTHERS",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.shopping_basket,
      color: GojekPalette.menuShop,
      title: "GO-SHOP",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.shopping_cart,
      color: GojekPalette.menuMart,
      title: "GO-MART",
    ));
    _appServiceList.add(new AppServices(
      image: Icons.local_play,
      color: GojekPalette.menuTix,
      title: "GO-TIX",
    ));

  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: new Scaffold(
          appBar: new GojekAppBar(),
          backgroundColor: GojekPalette.grey,
          body: new Container(
            child: new ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      _buildHeaderMenu(),
                      _buildServicesMenu(),
                    ],
                  ),
                ),
                new Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 16.0),
                  child: new Column(
                    children: <Widget>[
                      _buildGoFoodFeatured(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  Widget _rowAppService(AppServices appService) {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              showModalBottomSheet<void>(context: context, builder: (context) {
                return _buildMenuBottomSheet();
              });
            },
            child: new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: GojekPalette.grey200, width: 1.0),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))),
              padding: EdgeInsets.all(12.0),
              child: new Icon(appService.image, color: appService.color, size: 32.0,
              ),
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 6.0)),
          new Text(appService.title, style: new TextStyle(fontSize: 10.0))
        ],
      ),
    );
  }

  Widget _rowGoFoodFeatured(Food food) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(borderRadius: new BorderRadius.circular(8.0), child: new Image.asset(food.image, width: 132.0, height: 132.0)),
          new Padding(padding: EdgeInsets.only(top: 8.0)),
          new Text(food.title),
        ],
      ),
    );
  }

  Widget _buildHeaderMenu() {
    return new Container(
      height: 120.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff3164bd), Color(0xff295cb5)]),
        borderRadius: new BorderRadius.all(new Radius.circular(3.0))
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         new Container(
           padding: EdgeInsets.all(12.0),
           decoration: new BoxDecoration(
             gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff3164bd), Color(0xff295cb5)]),
             borderRadius: new BorderRadius.only(topLeft: new Radius.circular(3.0), topRight: new Radius.circular(3.0))
           ),
           child: new Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               new Text("GOPAY", style: new TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: "NeoSansMedium")),
               new Container(child: new Text("Rp 120.000", style: new TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: "NeoSansMedium")))
             ],
           ),
         ),
         new Container(
           padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
           child: new Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               new Column(mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Image.asset("assets/icons/icon_transfer.png", width: 32.0, height: 32.0),
                   new Padding(padding: EdgeInsets.only(top: 10.0)),
                   new Text("Transfer", style: TextStyle(color: Colors.white, fontSize: 12.0))
                 ],
               ),
               new Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Image.asset("assets/icons/icon_scan.png", width: 32.0, height: 32.0),
                   new Padding(padding: EdgeInsets.only(top: 10.0)),
                   new Text("Scan QR", style: TextStyle(color: Colors.white))
                 ],
               ),
               new Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Image.asset("assets/icons/icon_saldo.png", width: 32.0, height: 32.0),
                   new Padding(padding: EdgeInsets.only(top: 10.0)),
                   new Text("Balance", style: TextStyle(color: Colors.white, fontSize: 12.0))
                 ],
               ),
               new Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Image.asset("assets/icons/icon_menu.png", width: 32.0, height: 32.0),
                   new Padding(padding: EdgeInsets.only(top: 10.0),),
                   new Text("Others", style: TextStyle(color: Colors.white, fontSize: 12.0))
                 ],
               )
             ],
           ),
         )
        ]
      ),
    );
  }

  Widget _buildServicesMenu() {
    return new SizedBox(
      width: double.infinity,
      height: 220.0,
      child: new Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: 8,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, position) {
              return _rowAppService(_appServiceList[position]);
            }),
      ),
    );
  }

  Widget _buildGoFoodFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text("GO-FOOD", style: new TextStyle(fontFamily: "NeoSansMedium")),
          new Padding(padding: EdgeInsets.only(top: 8.0)),
          new Text("Pilihan Terlaris", style: new TextStyle(fontFamily: "NeoSansMedium")),
          new SizedBox(
            height: 172.0,
            child: new FutureBuilder<List>(
                future: fetchFood(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                        itemCount: snapshot.data.length,
                        padding: EdgeInsets.only(top: 12.0),
                        physics: new ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return _rowGoFoodFeatured(snapshot.data[index]);
                        });
                  }
                  return Center(child: SizedBox(width: 40.0, height: 40.0, child: const CircularProgressIndicator()));
                }
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMenuBottomSheet() {
    return new StatefulBuilder(builder: (c, s) {
      return new SafeArea(
          child: new Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            width: double.infinity,
            decoration: new BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: Colors.white),
            child: new Column(
              children: <Widget>[
                new Icon(Icons.drag_handle, color: GojekPalette.grey),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("GO-JEK Services", style: new TextStyle(fontFamily: "NeoSansMedium", fontSize: 18.0)),
                    new OutlineButton(
                      color: GojekPalette.green,
                      onPressed: () {},
                      child: new Text("EDIT FAVORITES", style: new TextStyle(fontSize: 12.0, color: GojekPalette.green)),
                    ),
                  ],
                ),
                new Container(
                  height: 300.0,
                  child: new GridView.builder(
                      physics: new NeverScrollableScrollPhysics(),
                      itemCount: _appServiceList.length,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (context, position) {
                        return _rowAppService(_appServiceList[position]);
                      }
                  ),
                )
              ],
            ),
          )
      );
    });
  }
}