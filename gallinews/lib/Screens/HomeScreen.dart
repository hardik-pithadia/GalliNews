import 'package:flutter/material.dart';
import 'package:stacked_page_view/stacked_page_view.dart';


class HomeScreen extends StatefulWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
    throw UnimplementedError();
  }
}

class _HomeScreenState extends State<HomeScreen>
{
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Material(
      child: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          controller: pageController,
          itemBuilder: (context, index) {
            return GestureDetector(
              onPanUpdate: (details) {
                if (details.delta.dx > 0) {
                  showAlertDialog(context, "Swiping To Right Direction");
                } else {
                  showAlertDialog(context, "Swiping To Left Direction");
                }
              },
              child: StackPageView(
                controller: pageController,
                index: index,
                child: Column(
                  children: [
                    // Image Area
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/flight.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),

                    // News Area Heading + News
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.50,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: Text(
                              "Live Updates: Rahul Gandhi detained amid protests against ED summons to Sonia Gandhi, says party",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "Congress leader Rahul Gandhi was detained by the Delhi Police amid protests against the ED’s summoning of Sonia Gandhi in an alleged money laundering case. Other party leaders, including Mallikarjun Kharge, Ranjeet Ranjan, KC Venugopal, Manickam Tagore, Imran Pratapgarhi, and K Suresh, were also detained ANI reported.Sonia Gandhi reached the ED office in New Delhi on Tuesday for a second round of questioning in the National Herald money laundering case. She was accompanied by Priyanka and Rahul Gandhi.",
                                style: TextStyle(
                                      fontSize: 17
                                  ),
                              ),
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
      )
    );
    throw UnimplementedError();
  }

  showAlertDialog(BuildContext context, String textMessage) {
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

}