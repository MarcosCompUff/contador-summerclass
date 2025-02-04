import 'package:get/get.dart';

class ContadorController extends GetxController {

  int _contador = 0; // variável privada
  int get value => _contador;
  set value(int newValue) => _contador = newValue;

  void incrementar() {
    _contador++;
    update();
  }
}