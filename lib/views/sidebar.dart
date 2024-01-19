import 'package:firstapp/views/Aboutus.dart';
import 'package:firstapp/views/Help.dart';
import 'package:firstapp/views/Logout.dart';
import 'package:firstapp/views/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/views/profile_screen.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  final List drawerMenuListname = const [
    {
      "leading": Icon(
        Icons.account_circle,
        color: Color(0xFF13C0E3),
      ),
      "title": "Profile",
      "trailing": Icon(
        Icons.chevron_right,
      ),
      "action_id": 1,
    },
    {
      "leading": Icon(
        Icons.animation_rounded,
        color: Color(0xFF13C0E3),
      ),
      "title": "About Us",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 2,
    },
    {
      "leading": Icon(
        Icons.help,
        color: Color(0xFF13C0E3),
      ),
      "title": "Help",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 3,
    },
    {
      "leading": Icon(
        Icons.settings,
        color: Color(0xFF13C0E3),
      ),
      "title": "Settings",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 4,
    },
    {
      "leading": Icon(
        Icons.exit_to_app,
        color: Color(0xFF13C0E3),
      ),
      "title": "Log Out",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 280,
        child: Drawer(
          child: ListView(children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/GAMIFY.png'),
              ),
              title: Text(
                "Aman Talaviya",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "9274529956",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ...drawerMenuListname.map((sideMenuData) {
              return ListTile(
                leading: sideMenuData['leading'],
                title: Text(
                  sideMenuData['title'],
                ),
                trailing: sideMenuData['trailing'],
                onTap: () {
                  Navigator.pop(context);

                  // Navigate to the appropriate screen based on action_id
                  if (sideMenuData['action_id'] == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 2) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Aboutus(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 3) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Help(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 4) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SettingScreen(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 5) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Logout(),
                      ),
                    );
                  }
                  // Add more conditions for other screens if needed
                },
              );
            }).toList(),
          ]),
        ),
      ),
    );
  }
}
