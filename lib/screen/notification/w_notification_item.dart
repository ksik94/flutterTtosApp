import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'vo/vo_notification.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget({super.key, required this.notification, required this.onTap});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double leftPadding = 15;
  static const double iconWidth = 25;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: leftPadding),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unReadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(iconWidth),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: 25,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.lessImportantText)
                    .makeCentered(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time,
                        locale: context.locale.languageCode)
                    .text
                    .size(13)
                    .color(context.appColors.lessImportantText)
                    .make(),
              ],
            ),
            widget.notification.description.text
                .make()
                .pOnly(left: leftPadding + iconWidth),
          ],
        ),
      ),
    );
  }
}
