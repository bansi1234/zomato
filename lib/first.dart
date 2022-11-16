import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/model.dart';

class first extends StatelessWidget {
  bool t1 = false;
  bool t2 = false;
  bool t3 = false;
  bool t4 = false;
  bool t5 = false;
  bool t6 = false;
  bool t7 = false;
  int total = 0;
  model m=Get.put(model());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text("CheckBox",style: TextStyle(fontSize: 26),),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() =>   CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,
                title: Text("burger"),
                subtitle: Text("price: 150/-"),

                onChanged: (value) {
                  m.t1 = value!;

                  //setState(() {});
                },
                value: m.t1),),
            Obx(() =>    CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,

                title: Text("pizza"),
                subtitle: Text("price: 200/-"),
                onChanged: (value) {
                  m.t2 = value!;
                  if (value == true) {
                    total = total + 200;
                  } else {
                    total = total - 200;
                  }
                  // setState(() {});
                },
                value: m.t2),),
            Obx(() =>  CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,


                title: Text("sandwich"),
                subtitle: Text("price: 120/-"),
                onChanged: (value) {
                  m.t3 = value!;
                  if (value == true) {
                    total = total + 120;
                  } else {
                    total = total - 120;
                  }
                  //setState(() {});
                },
                value: m.t3),),
            Obx(() => CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,

                title: Text("garlic-bread"),
                subtitle: Text("price: 150/-"),
                onChanged: (value) {
                  m.t4 = value!;
                  if (value == true) {
                    total = total + 150;
                  } else {
                    total = total - 150;
                  }
                  // setState(() {});
                },
                value: m.t4),),
            Obx(() => CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,

                title: Text("pasta"),
                subtitle: Text("price: 100/-"),
                onChanged: (value) {
                  m.t5 = value!;
                  if (value == true) {
                    total = total + 100;
                  } else {
                    total = total - 100;
                  }
                  // setState(() {});
                },
                value: m.t5),),
            Obx(() => CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,

                title: Text("dosa"),
                subtitle: Text("price: 200/-"),
                onChanged: (value) {
                  m.t6 = value!;
                  if (value == true) {
                    total = total + 200;
                  } else {
                    total = total - 200;
                  }
                  //  setState(() {});
                },
                value: m.t6),),
            Obx(() =>     CheckboxListTile(
              // controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepPurple,

                title: Text("Puff"),
                subtitle: Text("price: 50/-"),
                onChanged: (value) {
                  m.t7 = value!;
                  if (value == true) {
                    total = total + 200;
                  } else {
                    total = total - 200;
                  }
                  //  setState(() {});
                },
                value: m.t7),),
            Obx(() =>   Container(
              child: ListTile(
                title: Text(
                  "Your Total Bill:",
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "${total}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
