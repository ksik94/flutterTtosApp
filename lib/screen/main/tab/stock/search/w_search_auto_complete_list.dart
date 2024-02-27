import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail_screen.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {

  final TextEditingController controller;

  SearchAutoCompleteList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchData.autoCompleteList.length,
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.name;
        return Tap(
          onTap: () {
            controller.clear();
            searchData.addHistory(stock);
            Nav.push(
              StockDetailScreen(stockName: stockName),
            );
          },
          child: stockName.text.make().p(20),
        );
      },
    );
  }
}
