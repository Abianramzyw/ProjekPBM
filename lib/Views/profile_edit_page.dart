import 'package:flutter/material.dart';

//coba
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gass_in/Views/camera_page.dart';
import 'package:gass_in/Views/profile_page.dart';
import 'package:gass_in/Views/sign_up_page.dart';
import 'package:gass_in/Widgets/bot_nav_bar.dart';
import 'package:gass_in/constant.dart';
//coba

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

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
                  builder: (context) => ProfilePage(),
                ));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                        image: AssetImage("assets/images/profile.png")),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.camera,
                        size: 20,
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Camera(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 53),
                        backgroundColor: buttonGreen,
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text("Camera")),
            const SizedBox(height: 50),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text('Username'),
                      prefixIcon: Icon(Icons.account_circle)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text('Email'), prefixIcon: Icon(Icons.email)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text('Password'),
                      prefixIcon: Icon(Icons.password)),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 53),
                        backgroundColor: buttonGreen,
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text("Simpan")),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
