import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/d_number.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchMenu(
              '푸쉬 설정',
              Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              },
            ),
          ),
          Obx(
            () => Slider(
              value: Prefs.sliderPosition.get(),
              // onChanged: (value) {
              //   Prefs.sliderPosition.set(value);
              // },
              onChanged: (value) {
                Prefs.sliderPosition(value);
              },
            ),
          ),
          Obx(
            () => BigButton(
              '내 생일 \n${Prefs.birthDay.get() == null ? "" : Prefs.birthDay.get()!.formattedDate}',
              onTap: () async {
                DateTime now = DateTime.now();
                final date = await showDatePicker(
                  context: context,
                  initialDate: now,
                  firstDate: now.subtract(90.days),
                  lastDate: now.add(90.days),
                );

                if (date != null) {
                  Prefs.birthDay(date);
                }
              },
            ),
          ),
          Obx(
            () => BigButton(
              '지정된 숫자\n ${Prefs.number.get() != 0 ? Prefs.number.get() : ""}',
              onTap: () async {
                DateTime now = DateTime.now();
                final number = await NumberDialog().show();
                if (number != null) {
                  Prefs.number.set(number);
                } else if (number == null) {
                  Prefs.number.set(0);
                }
              },
            ),
          ),
          BigButton(
            '오픈 소스 화면',
            onTap: () async {
              Nav.push(OpensourceScreen());
            },
          ),
        ],
      ),
    );
  }
}
