import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo_stock.dart';

class PopularStockItem extends StatelessWidget {
  final int index;
  final Stock stock;

  const PopularStockItem({super.key, required this.index, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: index.text.size(15).make(),
        ),
        width30,
        stock.name.text.size(15).make(),
        emptyExpanded,
        stock.todayPercentageString.text
            .size(15)
            .color(stock.getPriceColor(context))
            .make(),
      ],
    ).pSymmetric(v: 25);
  }
}
