import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_contain.dart';
import 'package:flutter/material.dart';
import 'vo/vo_bank_account.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {
    super.key,
  });

  void __print() {
    print("${account.accountTypeName ?? account.bank.name}의 잔고는 ${account
        .balance}입니다.");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>__print(),
      child: Row(
        children: [
          Image.asset(
            account.bank.logoImagePath,
            width: 40,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (account.accountTypeName ?? "${account.bank.name} 통장")
                    .text
                    .white
                    .size(12)
                    .make(),
                ("${account.balance}원").text.white.bold.size(16).make(),
              ],
            ).pSymmetric(h: 20, v: 10),
          ),
          RoundedContainer(
            backgroundColor: context.appColors.buttonBackground,
            radius: 7,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 35),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.center,
              ),
              onPressed: () => __print(),
              child: "송금".text.white.bold.make(),
            ),
          ),
        ],
      ),
    );
  }
}
