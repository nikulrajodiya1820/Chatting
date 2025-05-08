import 'package:chatting/route.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class PinNumberController extends GetxController {
  verifyPinNumber(pinNumber) async {
    FirebaseDatabase database = FirebaseDatabase.instance;

    DatabaseEvent result = await database.refFromURL("https://chating-1a019-default-rtdb.firebaseio.com/")
        .child('Users')
        .orderByChild("Pin")
        .equalTo(int.parse(pinNumber))
        .once();
    if (result.snapshot.exists) {
      print(result.snapshot.value);
      Get.offAndToNamed(Routes.chat,arguments: result.snapshot.value);
    } else {
      print("Not Exist");
    }
  }
}
