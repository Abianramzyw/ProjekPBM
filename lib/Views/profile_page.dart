import 'package:flutter/material.dart';
import 'package:gass_in/Views/profile_edit_page.dart';
import 'package:gass_in/Views/profile_info_page.dart';
import 'package:gass_in/Views/splash_page.dart';

import '../constant.dart';

//coba
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gass_in/Views/sign_up_page.dart';
import 'package:gass_in/Widgets/bot_nav_bar.dart';
import 'package:gass_in/constant.dart';
//coba

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: underlineGreen,
        elevation: 2,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Image.asset("assets/images/profile.png"),
              title: const Text(
                "Yudis",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
              subtitle: const Text(
                "yudis@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            ProfileMenu(
              title: "Edit Profile",
              icon: Icons.account_circle_outlined,
              onPress: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileEdit(),
                    ));
              },
            ),
            ProfileMenu(
              title: "Your Orders",
              icon: Icons.attach_money,
              onPress: () {},
            ),
            const Divider(),
            const SizedBox(height: 10),
            ProfileMenu(
              title: "Feedback",
              icon: Icons.feedback,
              onPress: () {},
            ),
            ProfileMenu(
              title: "Support",
              icon: Icons.support_agent,
              onPress: () {},
            ),
            ProfileMenu(
              title: "About",
              icon: Icons.info_rounded,
              onPress: () {},
            ),
            ProfileMenu(
              title: "Log Out",
              icon: Icons.logout,
              textColor: Colors.red,
              endIcon: false,
              onPress: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashTwoPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress,
      this.endIcon = true,
      this.textColor});

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: Icon(icon),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.arrow_forward_ios))
          : null,
    );
  }
}
