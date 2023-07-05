// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui_web';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final searchBarController = TextEditingController();

  @override
  void dispose() {
    searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    child: Text(
                      "Gmail",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl(
                          "https://mail.google.com/mail/u/0/#inbox");
                    },
                    onTap: () {
                      InternalLaunchUrl(
                          "https://mail.google.com/mail/u/0/#inbox");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "Drive",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl("https://drive.google.com/drive/u/0/");
                    },
                    onTap: () {
                      InternalLaunchUrl("https://drive.google.com/drive/u/0/");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "Images",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl("https://photos.google.com/");
                    },
                    onTap: () {
                      InternalLaunchUrl("https://photos.google.com/");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "Maps",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl("https://www.google.com/maps");
                    },
                    onTap: () {
                      InternalLaunchUrl("https://www.google.com/maps");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "AdSenses",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl(
                          "https://www.google.com/adsense/new/u/0/pub-7097300908994281/");
                    },
                    onTap: () {
                      InternalLaunchUrl(
                          "https://www.google.com/adsense/new/u/0/pub-7097300908994281/");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "Console",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl("https://play.google.com/console/");
                    },
                    onTap: () {
                      InternalLaunchUrl("https://play.google.com/console/");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Text(
                      "FireBase",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onLongPress: () {
                      ExternalLaunchUrl(
                          "https://console.firebase.google.com/u/0/");
                    },
                    onTap: () {
                      InternalLaunchUrl(
                          "https://console.firebase.google.com/u/0/");
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.search,
                                    onFieldSubmitted: (value) {
                                      searchLaunchUrl(searchBarController.text);
                                    },
                                    controller: searchBarController,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Search Bar',
                                      hintStyle: TextStyle(
                                          color: Colors.white60, fontSize: 23),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    searchBarController.clear();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Icon(Icons.close),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (searchBarController.text.isNotEmpty) {
                            searchLaunchUrl(searchBarController.text);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black.withOpacity(0.7),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: Text(
                                "Search",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          "Chat GPT",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    onTap: () {
                      InternalLaunchUrl("https://chat.openai.com/");
                    },
                    onLongPress: () {
                      ExternalLaunchUrl("https://chat.openai.com/");
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          "Google Bard",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    onTap: () {
                      InternalLaunchUrl("https://bard.google.com/?hl=en_GB");
                    },
                    onLongPress: () {
                      ExternalLaunchUrl("https://bard.google.com/?hl=en_GB");
                    },
                  ),
                ],
              )
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}

Future<void> searchLaunchUrl(String url) async {
  final Uri urlIn = Uri.parse('https://www.google.com/search?q=$url');
  if (!await launchUrl(urlIn, mode: LaunchMode.inAppWebView)) {
    throw 'Could not launch $urlIn';
  }
}

Future<void> ExternalLaunchUrl(String url) async {
  final Uri urlIn = Uri.parse(url);
  if (!await launchUrl(urlIn, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $urlIn';
  }
}

Future<void> InternalLaunchUrl(String url) async {
  final Uri urlIn = Uri.parse(url);
  final bool launched = await launchUrl(urlIn, mode: LaunchMode.inAppWebView);
  if (!launched) {
    // Open the URL in the same page using JavaScript
    throw '''
      <script type="text/javascript">
        window.location.href = "$url";
      </script>
    ''';
  }
}
