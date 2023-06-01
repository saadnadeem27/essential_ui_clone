import 'package:flutter/material.dart';
import 'package:forms_ui/screens/about_us.dart';
import 'package:forms_ui/screens/article.dart';
import 'package:forms_ui/screens/bookmarks.dart';
import 'package:forms_ui/screens/catalog.dart';
import 'package:forms_ui/screens/chat.dart';
import 'package:forms_ui/screens/contact_us.dart';
import 'package:forms_ui/screens/dashboard_screens/dashboard_home_screen.dart';
import 'package:forms_ui/screens/detail.dart';
import 'package:forms_ui/screens/history.dart';
import 'package:forms_ui/screens/navigation_screen/navigation_home_screen.dart';
import 'package:forms_ui/screens/notifications.dart';
import 'package:forms_ui/screens/onBoarding.dart';
import 'package:forms_ui/screens/profile.dart';
import 'package:forms_ui/screens/reviews_and_ratings.dart';
import 'package:forms_ui/screens/settings.dart';
import 'package:forms_ui/screens/social.dart';
import 'package:forms_ui/screens/tracking.dart';
import 'package:forms_ui/screens/transactions.dart';
import 'package:forms_ui/widgets/histroy_payment_list.dart';
import 'package:forms_ui/widgets/home_list_tile.dart';

import '../screens/formUi.dart';
import '../screens/navigation_screen/navigation_album_screen.dart';
import '../screens/navigation_screen/navigation_main_screen.dart';
import '../screens/navigation_screen/navigation_settings_screen.dart';

const kTextStyle = TextStyle(fontSize: 18);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Essential UI Kit'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ///Forms
          HomeListTile(
            title: 'Form',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormUi(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Catalog',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatalogScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Detail',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Chat',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Article',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Reviews and Ratings',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReviewsAndRatingScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Contact Us',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactUsScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'About Us',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Navigation',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigationMainScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Onboarding',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OnBoardingScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),

          HomeListTile(
            title: 'Transaction',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Bookmark',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookmarksScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Histroy',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistroyScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Social',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SocialScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Profile',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          // HomeListTile(
          //   title: 'Tracking',
          //   subtitle: 'subtitle',
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => TrackingScreen(),
          //         ));
          //   },
          //   child: Icon(Icons.people),
          // ),
          HomeListTile(
            title: 'Dashboard',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardHomeScreen(),
                  ));
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Settings',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
          HomeListTile(
            title: 'Notification',
            subtitle: 'subtitle',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ));
            },
            child: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
