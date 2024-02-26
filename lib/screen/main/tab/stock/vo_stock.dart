import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required super.yesterdayColsePrice,
      required super.currentPrice,
      required super.stockName,
      required this.stockImagePath});

  double get todayPercentage => ((currentPrice - yesterdayColsePrice) / yesterdayColsePrice*100).toPrecision(2);
  String get todayPercentageString =>"$symbol$todayPercentage%";

  bool get isPlus => currentPrice>yesterdayColsePrice;
  bool get isSame => currentPrice==yesterdayColsePrice;
  bool get isMinus => currentPrice<yesterdayColsePrice;

  String get symbol => isSame? "" : isPlus? "+" : "-";

  Color? getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
}
