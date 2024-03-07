import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac/main.dart';

class CreateRoomController extends GetxController {
  late TextEditingController roomController;

  @override
  void onInit() {
    roomController = TextEditingController();
    super.onInit();
  }

  void createRoom() {
    database.child('rooms').push().set({
      'room_name': roomController.text,
      'id': Random().nextInt(1000000).toString(),
      'game': {
        '0': '',
        '1': '',
        '2': '',
        '3': '',
        '4': '',
        '5': '',
        '6': '',
        '7': '',
        '8': '',
      }
    });
  }
}
