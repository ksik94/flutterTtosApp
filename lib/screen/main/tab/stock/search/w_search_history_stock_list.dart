import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail_screen.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.only(top: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8, top: 10),
                child: Row(
                  children: [
                    Tap(
                      onTap: () {Nav.push(StockDetailScreen(stockName: searchData.searchHistory[index]));},
                      child: searchData.searchHistory[index].text
                          .size(12)
                          .make()
                          .pOnly(bottom: 3),
                    ),
                    Tap(
                      onTap: () {
                        searchData.searchHistory.removeAt(index);
                      },
                      child: const Icon(
                        Icons.close,
                        size: 13,
                      ),
                    ),
                  ],
                )
                    .box
                    .withRounded(value: 6)
                    .color(context.appColors.historyItem)
                    .p8
                    .make(),
              ),
            ],
          ),
          itemCount: searchData.searchHistory.length,
        ),
      ),
    );
  }
}
