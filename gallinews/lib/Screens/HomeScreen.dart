import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:stacked_page_view/stacked_page_view.dart';

import 'package:gallinews/Screens/MenuScreen.dart';
import 'package:gallinews/Screens/ReelsScreen.dart';
import 'package:gallinews/model/news_model.dart';
import 'package:gallinews/services/api_service.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
    // throw UnimplementedError();
  }
}

class _HomeScreenState extends State<HomeScreen>
{
  final PageController pageController = PageController();
  late List<NewsModel>? _newsModel = [];

  @override
  void initState() {
    super.initState();
    _getNewsData();
  }

  void _getNewsData() async {
    _newsModel = (await ApiService().getNews())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Text("My Feed"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const MenuScreen())
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: _newsModel == null || _newsModel!.isEmpty ? const Center(
        child: CircularProgressIndicator(),
      ) : displayNewsInfo(context)
    );
    throw UnimplementedError();
  }

  void showAlertDialog(BuildContext context, String textMessage) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Swipe"),
      content: Text(textMessage),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget displayNewsInfo(BuildContext context) {
    return PageView.builder(
        itemCount: _newsModel!.length,
        scrollDirection: Axis.vertical,
        controller: pageController,
        itemBuilder: (context, index) {
          return GestureDetector(
            onPanUpdate: (details) {
              if (details.delta.dx > 0) {
                // showAlertDialog(context, "Swiping To Right Direction");
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuScreen())
                );
              } else {
                // showAlertDialog(context, "Swiping To Left Direction");
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const ReelsScreen())
                // );
              }
            },
            child: StackPageView(
              controller: pageController,
              index: index,
              child: Column(
                children: [
                  // Image Area
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Image.network(_newsModel![index].imageUrl.toString()),
                    // decoration: const BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage("images/flight.png"),
                    //         fit: BoxFit.fill
                    //     )
                    // ),
                  ),

                  // News Area Heading + News
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.50,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Text(
                            _newsModel![index].title.toString(),
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Html(
                              data: _newsModel![index].content.toString(),
                            ),
                            // child: Text(
                            //   _newsModel![index].content.toString(),
                            //   style: const TextStyle(
                            //       fontSize: 17
                            //   ),
                            // ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //Bottom Area for Ads
                  Expanded(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.10,
                        color: Colors.black54,
                      )
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}