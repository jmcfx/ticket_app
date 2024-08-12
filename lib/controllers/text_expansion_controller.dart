import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;

  toggleExpansion() {
    
      isExpanded.value = !isExpanded.value;
    
  }
  
}
