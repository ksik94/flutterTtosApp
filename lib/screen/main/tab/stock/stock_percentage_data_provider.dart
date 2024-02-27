import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

abstract mixin class StockPercentageDataProvider{

  int get currentPrice;
  int get yesterdayColsePrice;

  double get todayPercentage => ((currentPrice - yesterdayColsePrice) / yesterdayColsePrice*100).toPrecision(2);
  String get todayPercentageString =>"$symbol$todayPercentage%";

  bool get isPlus => currentPrice>yesterdayColsePrice;
  bool get isSame => currentPrice==yesterdayColsePrice;
  bool get isMinus => currentPrice<yesterdayColsePrice;

  String get symbol => isSame? "" : isPlus? "+" : "";

  Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
}