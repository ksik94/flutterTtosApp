import 'package:fast_app_base/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDataProvider{
  @override
  final int yesterdayColsePrice;
  @override
  final int currentPrice;

  PopularStock({required stockName, required this.yesterdayColsePrice, required this.currentPrice}) : super(stockName);


}