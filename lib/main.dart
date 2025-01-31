import 'package:contador/ui/pagina1.dart';
import 'package:contador/ui/pagina2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        primaryColor: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/1", page:() => const Pagina1(title: "Página 1",)),
        GetPage(name: "/2", page:() => const Pagina2(title:"Página 2")),
      ],
      initialRoute: "/1",
    );
  }
}
