import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gass_in/Views/profile_edit_page.dart';
import 'package:gass_in/Views/utils_scanner.dart';
import 'package:gass_in/Views/camera_page.dart';
import 'package:gass_in/Views/profile_page.dart';
import 'package:gass_in/Views/sign_up_page.dart';
import 'package:gass_in/Widgets/bot_nav_bar.dart';
import 'package:gass_in/constant.dart';

class GPSPage extends StatefulWidget {
  const GPSPage({super.key});
  @override
  _GPSPageState createState() => _GPSPageState();
}

class _GPSPageState extends State<GPSPage> {
  var locationMessage = "";

  void getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    print("$lat,$long");

    setState(() {
      locationMessage = "$position";
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 46.0,
              color: Colors.green,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Dapatkan Lokasi Anda",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Lokasi : $locationMessage"),
            ElevatedButton(
                onPressed: () {
                  getCurrentLocation();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 53),
                    backgroundColor: buttonGreen,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text("Lokasi Anda")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BottomNavBar(),
                                        ));
                                  },
                                  child: Text("Close"))
                            ],
                            title:
                                const Text("Driver sedang dalam perjalanan!"),
                            contentPadding: const EdgeInsets.all(20),
                            content: Text("Silahkan menunggu..."),
                          ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 53),
                    backgroundColor: buttonGreen,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text("Simpan")),
          ],
        ),
      ),
    );
  }
}
