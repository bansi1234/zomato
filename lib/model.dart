import 'package:get/get.dart';

class model extends GetxController
{
  bool t1 = false;
  bool t2 = false;
  bool t3 = false;
  bool t4 = false;
  bool t5 = false;
  bool t6 = false;
  bool t7 = false;
  RxInt total = 0.obs;

  void logic(int i,int price)
  {
      switch(i)
      {
        case 1:
          if (t1 == true) {
            total = total + price;
          } else {
            total = total - price;
          }
          break;
      }
  }
}
