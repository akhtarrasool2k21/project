import 'package:flutter/material.dart';

class SingaleProduct extends StatelessWidget {
  const SingaleProduct(
      {Key? key,
      this.productImage,
      this.productName,
      this.onTap,
      this.productDescibtion})
      : super(key: key);
  final String? productImage;
  final String? productName;
  final Function? onTap;
  final String? productDescibtion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Row(
        children: [
          Container(
            height: 230.0,
            width: 170.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffd9dad9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: Image(image: AssetImage(productImage!)),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          productName!,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          productDescibtion!,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 2),
                                height: 30.0,
                                // width: 50.0,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '50 Gram',
                                      style: TextStyle(
                                        // fontSize: 10.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 2),
                                height: 30.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
