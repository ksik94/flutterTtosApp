import 'package:fast_app_base/common/util/local_json.dart';
import 'package:get/get.dart';

import '../vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistory = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    loadLocalStockJson();
    searchHistory.addAll(['카카오', '한화', '삼성전자', '삼성물산', '넷플릭스', '카카오뱅크']);
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList =
        await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if(keyword.isEmpty) {
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value =
        stocks.where((element) => element.name.contains(keyword)).toList();
  }

  void addHistory(SimpleStock stock) {
    searchHistory.add(stock.name);
  }
}
