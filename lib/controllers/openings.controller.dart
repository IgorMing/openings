import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:openings/models/opening.model.dart';

class OpeningsController extends GetxController {
  final data = RxList<dynamic>([]);
  int get length => data.length;

  @override
  void onInit() {
    try {
      DatabaseReference openings = FirebaseDatabase.instance.reference().root();
      openings.once().then((snapshot) {
        snapshot.value.forEach((_, v) {
          data.add(v);
        });
      });
    } catch (err) {}
    super.onInit();
  }
}
