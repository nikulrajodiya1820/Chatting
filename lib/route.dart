import 'package:chatting/Chat/chat.dart';
import 'package:chatting/PinNumber/pin_number.dart';
import 'package:get/get.dart';

class Routes {
  static const String pinNumber = '/pin_number';
  static const String chat = '/chat';

  static final routes = [
    GetPage(name: pinNumber, page: () => PinNumber()),
    GetPage(name: chat, page: () => Chat()),
  ];
}