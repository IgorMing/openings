import 'package:firebase_database/firebase_database.dart';
import 'package:openings/models/opening.model.dart';

abstract class OpeningsDataFetcher {
  Future<List<OpeningModel>> fetch();
}

class FirebaseOpeningsDataFetcher implements OpeningsDataFetcher {
  Future<List<OpeningModel>> fetch() async {
    DatabaseReference openings = FirebaseDatabase.instance.reference().root();
    List<OpeningModel> data = [];
    var list = await openings.once();
    list.value.forEach((_, v) {
      data.add(OpeningModel.fromJson(v));
    });
    return data;
  }
}
