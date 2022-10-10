import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:gallinews/Screens/HomeScreen.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuScreen extends StatefulWidget
{
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuScreenState();
  }
}

class _MenuScreenState extends State<MenuScreen>
{
  String searchValue = '';
  final List<String> _suggestions = ['Albania', 'Algeria', 'Australia', 'Brazil', 'German', 'Madagascar', 'Mozambique', 'Portugal', 'Zambia'];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: EasySearchBar(
            title: const Text("Menu"),
            foregroundColor: Colors.white,
            onSearch: (value) => setState(() => searchValue = value),
            suggestions: _suggestions
        ),
        body:  ListView(
          children: [
            const SizedBox(
              height: 60,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black12
                          )
                        ]
                      ),
                      // color: Colors.white,
                      child: GestureDetector(
                        onTap: () {
                          debugPrint("Subscribe To whatsApp Button Clicked");
                          launchWhatsApp();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Subscribe To WhatsApp",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.black12
                            )
                          ]
                      ),
                      // color: Colors.white,
                      child: GestureDetector(
                        onTap: () {
                          debugPrint("Citizen Report Clicked");
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Citizen Reports",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                )
              ],
            ),

            // Container(
            //   margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
            //   // color: Colors.amber,
            //   height: 175,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children:    [
            //       const Expanded(
            //         child: Text(
            //           "Videos",
            //           style: TextStyle(
            //               fontSize: 20,
            //             fontWeight: FontWeight.bold
            //           ),
            //         ),
            //       ),
            //
            //       SizedBox(
            //         height: 140,
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: <Widget>[
            //             Expanded(
            //               child: ListView.builder(
            //                 scrollDirection: Axis.horizontal,
            //                 shrinkWrap: true,
            //                 itemCount: 10,
            //                 itemBuilder: (context, index){
            //                   return SizedBox(
            //                     width: 100,
            //                     height: 100,
            //                     child: GestureDetector(
            //                       onTap: () {
            //                         debugPrint("Video ${index+1} Clicked");
            //                       },
            //                       child: Card(
            //                         // color: Colors.blue,
            //                         elevation: 5,
            //                         child: Column(
            //                           children: [
            //                             Container(
            //                               // height: 75,
            //                               padding: const EdgeInsets.all(5),
            //                               // height: 75,
            //                               child: Image.network(
            //                                 "https://picsum.photos/250?image=9",
            //                                 fit: BoxFit.fill,
            //                               ),
            //                             ),
            //
            //                             Expanded(
            //                                 child: Text(
            //                                   "Video ${index+1}",
            //                                   overflow: TextOverflow.fade,
            //                                   textAlign: TextAlign.center,
            //                                 )
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                     )
            //                   );
            //                   },
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            
            Container(
              margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
              height: 400,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const Expanded(
                    child: Text(
                      "Suggested Topics",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            // color: Colors.pink,
                            child: GestureDetector(
                              onTap: () {
                                debugPrint("Breaking New Clicked");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20538"))
                                );
                              },
                              child: Card(
                                elevation: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.new_releases_rounded,
                                      size: 45,
                                    ),

                                    Text(
                                      "Breaking News",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("All News Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20544"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "All News",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Filmy Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20538"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Filmy",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Crime Clicked");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20539"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Crime",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Politics Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20547"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Politics",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Sports Clicked");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20551"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Sports",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Shayri Clicked");
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Shayri",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Share Clicked");
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Share",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        // Expanded(
                        //   child: SizedBox(
                        //       height: 110,
                        //       width: 110,
                        //       // color: Colors.pink,
                        //       child: Card(
                        //         elevation: 6,
                        //         child: Column(
                        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //           crossAxisAlignment: CrossAxisAlignment.center,
                        //           children: const [
                        //             Icon(
                        //               Icons.new_releases_rounded,
                        //               size: 45,
                        //             ),
                        //
                        //             Text(
                        //               "Sports",
                        //               textAlign: TextAlign.center,
                        //               style: TextStyle(
                        //                   fontSize: 17,
                        //                   fontWeight: FontWeight.w600
                        //               ),
                        //             )
                        //           ],
                        //         ),
                        //       )
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
              height: 530,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const Expanded(
                    child: Text(
                      "Areas",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Desh Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20541"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Desh",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Mumbai Clicked");

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          title: const Text(
                                            'Mumbai',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                            ),
                                          ),
                                          content: Form(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Andheri East 166");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20560"))
                                                    );
                                                  },
                                                  child: const Text(
                                                      "Andheri East 166",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Andheri West 165");
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20561"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Andheri West 165",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Bandra East 176");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20563"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Bandra East 176",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Bandra West 177");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20564"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Bandra West 177",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Bhandup West 157");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20566"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Bhandup West 157",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Borivali 152");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20568"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Borivali 152",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Byculla 184");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20569"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Byculla 184",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Chandivali 168");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20570"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Chandivali 168",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Charkop 161");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20561"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Charkop 161",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Chembur 173");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20561"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Chembur 173",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Colaba 187");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20573"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Colaba 187",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Dahisar 153");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20574"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Dahisar 153",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Dharavi 178");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20575"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Dharavi 178",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Dindoshi 159");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20576"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Dindoshi 159",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Dongri");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20577"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Dongri",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Ghatkoper East 170");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20578"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Ghatkoper East 170",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Ghatkoper West 169");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20579"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Ghatkoper West 169",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Goregaon 163");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20580"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Goregaon 163",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Jogeshwari East 158");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20581"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Jogeshwari East 158",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Kalina 175");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20582"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Kalina 175",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Kandivali East 160");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20584"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Kandivali East 160",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Kurla 174");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20586"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Kurla 174",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mahim 181");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20587"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mahim 181",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Malad West 162");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20588"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Malad West 162",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Malbar Hill 185");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20589"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Malbar Hill 185",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mankhurd 171");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20590"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mankhurd 171",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mumbadevi 186");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20592"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mumbadevi 186",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mumbai");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20544"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mumbai",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Shiwdi 183");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20549"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Shiwdi 183",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Sion Koliwada 179");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20550"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Sion Koliwada 179",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Versova 164");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20555"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Versova 164",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Vikhroli 156");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20556"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Vikhroli 156",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Vile Parle 167");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20557"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Vile Parle 167",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Wadala-Dadar 180");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20558"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Wadala-Dadar 180",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Worli 182");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20559"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Worli 182",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Navi Mumbai");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20545"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Navi Mumbai",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      });

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20544"))
                                  // );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Mumbai",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Navi Mumbai Clicked");

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          title: const Text(
                                            'Navi Mumbai',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          content: Form(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Belapur");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20565"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Belapur",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Kharghar");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20585"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Kharghar",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Navi Mumbai");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20545"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Navi Mumbai",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Panvel");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20546"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Panvel",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Vashi");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20554"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Vashi",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      });
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Navi Mumbai",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Thane Clicked");

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          title: const Text(
                                            'Thane',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          content: Form(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Bhiwandi");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20567"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Bhiwandi",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Kalyan");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20583"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Kalyan",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mira-Bhayandar");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20591"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mira-Bhayandar",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Mumbra");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20593"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Mumbra",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Ulhasnagar");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20553"))
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Ulhasnagar",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      });

                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Thane",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Palghar Clicked");

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          title: const Text(
                                            'Palghar',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          content: Form(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Dahanu Road");
                                                  },
                                                  child: const Text(
                                                    "Dahanu Road",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Vasai-Virar");
                                                  },
                                                  child: const Text(
                                                    "Vasai-Virar",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      });

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20547"))
                                  // );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Palghar",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Maharashtra Clicked");

                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          title: const Text(
                                            'Maharashtra',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          content: Form(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Amravati");
                                                  },
                                                  child: const Text(
                                                    "Amravati",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Aurangabad");
                                                  },
                                                  child: const Text(
                                                    "Aurangabad",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Nagpur");
                                                  },
                                                  child: const Text(
                                                    "Nagpur",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 30,),

                                                GestureDetector(
                                                  onTap: () {
                                                    debugPrint("Nasik");
                                                  },
                                                  child: const Text(
                                                    "Nasik",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      });

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20551"))
                                  // );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Maharashtra",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Delhi Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20540"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Delhi",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Pune Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "20548"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Pune",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("International Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "25433"))
                                  );

                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "International",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Assembly Election Clicked");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "25435"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Assembly Election",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Festival Galli Clicked");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomeScreen(categoryId: "25434"))
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.new_releases_rounded,
                                        size: 45,
                                      ),

                                      Text(
                                        "Festival Galli",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
    throw UnimplementedError();
  }

  void launchWhatsApp() async {
    debugPrint("launchWhatsApp");

    var whatsapp = "+917666240144";
    var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");

    if (await canLaunchUrl(whatsappAndroid))
    {
      await launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }
}