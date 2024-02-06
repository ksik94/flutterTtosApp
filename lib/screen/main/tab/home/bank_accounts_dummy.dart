import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 60000000, accountTypeName: "저축예금");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 90000000, accountTypeName: "저축예금");
final bankAccountTtoss = BankAccount(bankTtoss, 2000000);
final bankAccountKakao =
    BankAccount(bankKakao, 1000000, accountTypeName: "입출금통장1");
final bankAccountKakao1 =
    BankAccount(bankKakao, 2000000, accountTypeName: "입출금통장2");
final bankAccountKakao2 =
    BankAccount(bankKakao, 3000000, accountTypeName: "입출금통장3");
final bankAccountKakao3 =
    BankAccount(bankKakao, 4000000, accountTypeName: "입출금통장4");
final bankAccountKakao4 =
    BankAccount(bankKakao, 5000000, accountTypeName: "입출금통장5");
final bankAccountKakao5 =
    BankAccount(bankKakao, 6000000, accountTypeName: "자유적금");
final bankAccountKakao6 =
    BankAccount(bankKakao, 7000000, accountTypeName: "청년저축");
final bankAccountKakao7 =
    BankAccount(bankKakao, 8000000, accountTypeName: "주택청약");

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtoss,
  bankAccountKakao,
  bankAccountKakao1,
  bankAccountKakao2,
  bankAccountKakao3,
  bankAccountKakao4,
  bankAccountKakao5,
  bankAccountKakao6,
  bankAccountKakao7,
];
