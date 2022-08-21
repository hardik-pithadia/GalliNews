import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';

class MenuScreen extends StatefulWidget
{
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuScreenState();
    throw UnimplementedError();
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

            Container(
              margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
              // color: Colors.amber,
              height: 175,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:    [
                  const Expanded(
                    child: Text(
                      "Videos",
                      style: TextStyle(
                          fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 140,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index){
                              return SizedBox(
                                width: 100,
                                height: 100,
                                child: GestureDetector(
                                  onTap: () {
                                    debugPrint("Video ${index+1} Clicked");
                                  },
                                  child: Card(
                                    // color: Colors.blue,
                                    elevation: 5,
                                    child: Column(
                                      children: [
                                        Container(
                                          // height: 75,
                                          padding: const EdgeInsets.all(5),
                                          // height: 75,
                                          child: Image.network(
                                            "https://picsum.photos/250?image=9",
                                            fit: BoxFit.fill,
                                          ),
                                        ),

                                        Expanded(
                                            child: Text(
                                              "Video ${index+1}",
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.center,
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              );
                              },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            
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
                            )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
                              )
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              // color: Colors.pink,
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
}