import 'package:get/get.dart';
import 'package:openings/models/opening.model.dart';
import 'package:openings/services/openings.service.dart';

class OpeningsController extends GetxController {
  final data = RxList<OpeningModel>([]);
  int get length => data.length;
  OpeningsDataFetcher fetcher;

  OpeningsController(OpeningsDataFetcher fetcher) {
    this.fetcher = fetcher;
  }

  @override
  void onInit() {
    try {
      this.fetcher.fetch().then((list) => list.forEach((v) => data.add(v)));
    } catch (err) {}
    super.onInit();
  }
}
