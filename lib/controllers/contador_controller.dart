import 'package:get/get.dart';

class ContadorController extends GetxController {

  final RxInt _contador = 0.obs; // variável privada
  int get value => _contador.value;
  set value(int newValue) => _contador.value = newValue;

  void incrementar() {
    _contador.value++;
    update();
  }
}