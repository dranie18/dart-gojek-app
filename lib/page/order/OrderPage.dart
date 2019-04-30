import 'package:flutter/material.dart';
import 'package:gojek/Model.dart';
import 'package:gojek/landing/AppBar.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => new _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Order> _orderList = [];

  void initState() {
    super.initState();

    _orderList.add(new Order(title: "Mc Donalds"));
    _orderList.add(new Order(title: "Mc Donalds"));
    _orderList.add(new Order(title: "Mc Donalds"));
    _orderList.add(new Order(title: "Mc Donalds"));
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: GojekAppBar(),
        backgroundColor: Colors.grey,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[_buildOrderItem()],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderItem() {
    return new SizedBox(
      width: double.infinity,
      height: 220.0,
      child: new Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, position) {
              return _rowOrderService(_orderList[position]);
            }),
      ),
    );
  }

  Widget _rowOrderService(Order order) {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: new Container(),
          )
        ],
      ),
    );
  }
}
