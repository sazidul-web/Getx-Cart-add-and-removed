import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/Mycontroller.dart';

class TotalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Mycontroller c = Get.put(Mycontroller());
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total value: ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
              Obx(() => Text(
                    '${c.sum.toString()}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
