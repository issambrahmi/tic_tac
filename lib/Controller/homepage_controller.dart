import 'package:get/get.dart';
import 'package:tic_tac/View/Pages/create_room_page.dart';

class HomePageController extends GetxController {
  goToCreatePage() {
    Get.to(const CreateRoomPage());
  }

  gotToJoingRoomPage() {}
}
