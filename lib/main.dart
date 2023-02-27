import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

List items = [
  Icon(FontAwesomeIcons.user),
  Icon(FontAwesomeIcons.user),
  Icon(FontAwesomeIcons.user),
  Icon(FontAwesomeIcons.user)
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            backgroundColor: Colors.blueAccent.shade400,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
            title: Center(child: Text("Profile"))),
        drawer: Drawer(
          backgroundColor: Colors.cyan,
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                        "https://im.indiatimes.in/content/itimes/photo/2015/Jun/4/1433403538-doremon.jpg")),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.user,
                            color: Colors.orange,
                          )),
                      Expanded(flex: 4, child: Text("My Account")),
                      Expanded(
                          flex: 1, child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.orange,
                          )),
                      Expanded(flex: 4, child: Text("Notifications")),
                      Expanded(
                          flex: 1, child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.settings,
                            color: Colors.orange,
                          )),
                      Expanded(flex: 4, child: Text("Settings")),
                      Expanded(
                          flex: 1, child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.help,
                            color: Colors.orange,
                          )),
                      Expanded(flex: 4, child: Text("Help Centre")),
                      Expanded(
                          flex: 1, child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.logout_outlined,
                            color: Colors.orange,
                          )),
                      Expanded(flex: 4, child: Text("Logout")),
                      Expanded(
                          flex: 1, child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue.shade900,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.linkedinIn,
                            color: Colors.blue.shade900)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue.shade900,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.pinkAccent,
                        ))
                  ],
                ),
                CircularProgressIndicator(
                  color: Colors.orange,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.grey.shade100,
            unselectedItemColor: Colors.orange,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            showUnselectedLabels: true,
            iconSize: 20,
            onTap: _onItemTapped,
            elevation: 5,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user), label: "user"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "use4"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "user2"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: "use3")
            ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/image.jpg"),
              ),
              Text("Arpit Verma",
                  style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.w500, fontSize: 18)),
              Text("Flutter Developer",
                  style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.w500, fontSize: 23)),
              Container(
                height: size.height * 0.5,
                child: ListView(
                  children: [
                    Card(
                      elevation: 20,
                      color: Colors.grey.shade300,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  FontAwesomeIcons.user,
                                  color: Colors.orange,
                                )),
                            Expanded(flex: 4, child: Text("My Account")),
                            Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios_rounded))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      color: Colors.grey.shade300,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.notifications_none_outlined,
                                  color: Colors.orange,
                                )),
                            Expanded(flex: 4, child: Text("Notifications")),
                            Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios_rounded))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.grey.shade300,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.orange,
                                )),
                            Expanded(flex: 4, child: Text("Settings")),
                            Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios_rounded))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      color: Colors.grey.shade300,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.help,
                                  color: Colors.orange,
                                )),
                            Expanded(flex: 4, child: Text("Help Centre")),
                            Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios_rounded))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      color: Colors.grey.shade300,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.logout_outlined,
                                  color: Colors.orange,
                                )),
                            Expanded(flex: 4, child: Text("Logout")),
                            Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios_rounded))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
