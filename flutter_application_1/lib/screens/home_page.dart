import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/singale_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xffd4d181),
            radius: 15.0,
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 15.0,
              child: Icon(
                Icons.shop_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 5.0,
            ),
            child: Container(
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://askthescientists.com/wp-content/uploads/2017/04/AdobeStock_93015665.jpg'),
                ),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                ),
                              ),
                              height: 50.0,
                              width: 100.0,
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              '30%Off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'On all Vegitables Products',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Herbs Seasionings ',
                ),
                Text(
                  'View All',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingaleProduct(
                    productImage: 'assets/bg3.png',
                    productName: 'Frash basil',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg4.png',
                    productName: 'Frash Tomato',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg5.png',
                    productName: 'Frash Cabbage',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg6.png',
                    productName: 'Frash Eggplant',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg7.png',
                    productName: 'Frash Chili Pepper',
                    productDescibtion: '50\$/50Gram'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fresh Fruits'),
                Text('View All'),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingaleProduct(
                    productImage: 'assets/bg8.png',
                    productName: 'Frash basil',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg4.png',
                    productName: 'Frash Tomato',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg5.png',
                    productName: 'Frash Cabbage',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg6.png',
                    productName: 'Frash Eggplant',
                    productDescibtion: '50\$/50Gram'),
                SingaleProduct(
                    productImage: 'assets/bg7.png',
                    productName: 'Frash Chili Pepper',
                    productDescibtion: 'Order Now'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
