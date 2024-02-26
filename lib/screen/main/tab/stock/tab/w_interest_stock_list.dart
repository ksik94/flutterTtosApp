import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/stocks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_stock_item.dart';
import 'package:flutter/material.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInteresStocks.map((element) => StockItem(stock: element,)).toList(),
      ],
    ).pOnly(bottom: 50);
  }
}
