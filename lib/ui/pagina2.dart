import 'package:contador/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key, required this.title});

  final String title;

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title, style: const TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<ContadorController>(builder: (controller) {
              return Text('${controller.value}');
            }),
            ElevatedButton(
              onPressed: () {
                Get.offAndToNamed('/pagina1');
              },
              child: const Text('Ir para a página 1'),
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