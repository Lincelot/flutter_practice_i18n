import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_practice_i18n/extension/trans_extension.dart';
import 'package:flutter_practice_i18n/i18n/app1_translation_service.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await App1TranslationService.init();
  log('jsonString : ${App1TranslationService.getInstance().keys}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const MyHomePage(title: 'Home Page'),
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        locale: App1TranslationService.getInstance().locale,
        fallbackLocale: App1TranslationService.getInstance().fallbackLocale,
        translations: App1TranslationService.getInstance());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'test'.transParams({'key': '$_counter'}),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
