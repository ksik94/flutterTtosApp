import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';

class PopularStock extends SimpleStock{
  final int yesterdayColsePrice;
  final int currentPrice;

  PopularStock({required this.yesterdayColsePrice, required this.currentPrice, required stockName}) : super(stockName);


}