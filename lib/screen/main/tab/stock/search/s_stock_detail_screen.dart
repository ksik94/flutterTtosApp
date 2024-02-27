import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;

  const StockDetailScreen({super.key, required this.stockName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stockName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              '$stockName의 상세 페이지 입니다.'.text.size(20).bold.make(),
              '주식 상세 내용 작성'.text.make(),
            ],
          ),
        ),
      ),
    );
  }
}
