import 'package:flutter/material.dart';
import 'package:gass_in/Widgets/bot_nav_bar.dart';

import '../constant.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [1];
    return Scaffold(
      appBar: AppBar(
        shadowColor: underlineGreen,
        elevation: 2,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavBar(),
                ));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: data.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Group.png"),
                  const SizedBox(
                    height: 26,
                  ),
                  const Text("You don't have any orders yet!"),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 234,
                    height: 33,
                    child: Text(
                      "Looks like you don't ordered anything",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        minimumSize: const Size(180, 53),
                        backgroundColor: buttonGreen,
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text("Send Items Now!"),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 9.6),
                  height: 97.42,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    leading: Image.asset("assets/images/Vector.png"),
                    title: const Text(
                      "James Freder",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Row(
                      children: const [
                        Text("4.8", style: TextStyle(color: Colors.white)),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFCE00),
                        )
                      ],
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Status", style: TextStyle(color: Colors.white)),
                          Text(
                            "Done",
                            style: TextStyle(
                                color: Color(0xFF068C44),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
