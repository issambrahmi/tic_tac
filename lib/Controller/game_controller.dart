import 'package:get/get.dart';
import 'package:tic_tac/main.dart';

class GameController extends GetxController {
  late List<dynamic> game;
  String playerText = 'X';
  bool isWin = false;
  List winingList = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];
  Stream cases = database
      .child('rooms')
      .child('-Ns-r6NJTe_qc-68W0Q8')
      .child('game')
      .onValue;

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
        .child('$index')
        .set(playerText);

    for (int i = 0; i < winingList.length; i++) {
      for (int j = 0; j < 3; j++) {
        if (game[winingList[i][j]] == playerText && j == 2) {
          isWin = true;
          break;
        } else if (game[winingList[i][j]] != playerText) {
          j = 2;
        }
      }
    }
  }
}
