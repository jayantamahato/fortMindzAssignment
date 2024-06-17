import 'package:get/get.dart';

import 'features/library/view/detail_screen.dart';
import 'features/library/view/list_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>> getRoute() {
    return [
      GetPage(
        page: () => const ListScreen(),
        name: ListScreen.route,
        transition: Transition.cupertino,
      ),
      GetPage(
        page: () => DetailsScreen(),
        name: DetailsScreen.route,
        transition: Transition.cupertino,
      ),
    ];
  }
}
