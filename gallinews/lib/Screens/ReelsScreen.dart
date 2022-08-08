import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget
{
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ReelsScreenState();
  }
}

class _ReelsScreenState extends State<ReelsScreen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Insta Reels"),
        ),
        body: const Center(
          child: Text("Insta Reels"),
        ),
      ),
    );
    throw UnimplementedError();
  }

}