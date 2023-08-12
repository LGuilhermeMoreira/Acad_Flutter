import 'package:device_preview/device_preview.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/bottons_and_text_rotation/buttons_and_text_rotation.dart';
import 'package:flutter_widgets/pages/container/container_page.dart';
import 'package:flutter_widgets/pages/home/home_page.dart';
import 'package:flutter_widgets/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_widgets/pages/media_query/media_query_page.dart';
import 'package:flutter_widgets/pages/row_column/row_column_page.dart';
import 'package:flutter_widgets/pages/scrolls/listview_page.dart';
import 'package:flutter_widgets/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_widgets/pages/test/test_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, //kReleaseMode
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/container': (context) => ContainerPage(),
        '/test': (context) => TestPage(),
        '/row_column': (context) => RowColumnPage(),
        '/media_query': (context) => MediaQueryPage(),
        '/layout_builder': (context) => LayoutBuilderPage(),
        '/button_text_rotation': (context) => ButtonsAndTextRotation(),
        '/scroll/single': (context) => SinglechildscrollviewPage(),
        '/scroll/listview': (context) => ListviewPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
