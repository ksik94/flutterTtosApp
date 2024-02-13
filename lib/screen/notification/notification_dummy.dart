import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요?',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요!',
    DateTime.now().subtract(27.minutes),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.money,
    '유럽 식품 물가가 치솟고 있어요.',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.walk,
    '9000걸음 이상 걸었다면 2% 부족할 때! 1000걸음만 걷고 2% 받아가세요!',
    DateTime.now().subtract(27.minutes),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.luck,
    '행운의 복권 도착!',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.people,
    '이번주 공동구매 상품 알아보기',
    DateTime.now().subtract(1.days),
  ),
  TtossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 쿠폰 받기',
    DateTime.now().subtract(27.minutes),
  ),
];
