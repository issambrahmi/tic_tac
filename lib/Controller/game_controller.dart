import 'package:get/get.dart';
import 'package:tic_tac/main.dart';

class GameController extends GetxController {
  Stream cases = database
      .child('rooms')
      .child('-Ns-r6NJTe_qc-68W0Q8')
      .child('game')
      .onValue;
  late List game;
  String playerText = 'O';

  @override
  void onInit() {
    game = List.filled(9, '');
    cases.listen((event) {
      if (event.snapshot.value != null) {
        List data = event.snapshot.value;
        for (int i = 0; i < game.length; i++) {
          if (game[i] != data[i]) {
            game[i] = data[i];
          }
        }
        update();
      }
    });
    super.onInit();
  }

  void ontap(int index) {
    database
        .child('rooms')
        .child('-Ns-r6NJTe_qc-68W0Q8')
        .child('game')
        .child('$index').set(playerText);
  }
}
