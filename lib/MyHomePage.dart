import 'package:flutter/material.dart';
import 'package:getx_cart/TotalPage.dart';
import 'package:getx_cart/controller/Mycontroller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Mycontroller c = Get.put(Mycontroller());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Books',
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      c.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Obx(() => Text(
                      '${c.Books.toString()}',
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 15,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                        onPressed: () {
                          c.dcrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Pens',
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () {
                        c.incrementpens();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Obx(() => Text(
                      '${c.Pens.toString()}',
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () {
                        c.dcrementpends();
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  height: 70,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade900,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadowColor: Colors.blue),
                      onPressed: () => Get.to(() => TotalPage()),
                      child: Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
