import 'package:contador/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key, required this.title});

  final String title;

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text('${Get.find<ContadorController>().value}');
            }),
            ElevatedButton(
              onPressed: () {
                Get.offAndToNamed('/pagina2');
              },
              child: const Text('Ir para a página 2'),
            ),
          ],
        ),
      ),
      floatingActionButton: GetBuilder<ContadorController>(builder: (controller) {
        return FloatingActionButton(
          onPressed: controller.incrementar,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        );
      }),
    );
  }
}