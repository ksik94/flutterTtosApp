import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_contain.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog({super.key, super.animation = NavAni.Fade});

  @override
  State<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();
  int? number;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
            child: Column(
              children: [
                '숫자를 입력해주세요.'.text.make(),
                TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                ),
                RoundButton(
                  text: '완료',
                  onTap: () {
                    final text = controller.text;
                    if (text != "") {
                      number = int.parse(text);
                    }
                    widget.hide(number);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
