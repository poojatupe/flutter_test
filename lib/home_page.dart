
import 'dart:ui';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dash_borad/tabthired.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'contactus.dart';
import 'home_tab.dart';


class HomePage  extends StatefulWidget {
  // LoginResponseModel loginResponseModel;


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int currentPage=0;
  static List<Widget>_widgetOptions=<Widget>[
    HomeTab(),
    Tab_thired(),
    Contact_us(),


  ];

  int Search_json = 0;
  var search_Text = false;
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
              return Scaffold(
                appBar: new AppBar(
                    backgroundColor: Color(0xFF53DFE1),
                    title: Text('Flutter Test', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                    bottom: PreferredSize(
                        preferredSize: Size.fromHeight(50),
                        child: ListTile(
                          leading: Container(
                            height: 45, width: 50,
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //     begin: Alignment.topLeft,
                              //     end: Alignment.bottomRight,
                              //     colors: [Color(0xFF091327),Colors.white
                              //     ]),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                                onPressed: () {
                                },
                                icon:  Icon(Icons.search_sharp,size: 22,color: Color(0xFF091327),)

                            ),
                          ),
                          title: TextField(
                            controller: controller,
                            onChanged: (value) {
                              value = value.toLowerCase();
                            },
                            decoration: InputDecoration(
                              hintText: '  Search By Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.zero,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        )
                    )
                ),
                drawer: Container(
                  color: Color(0xFF88CFF8).withOpacity(0.5),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      // Set the transparency here
                      canvasColor: Color(0xFFA5F8F7).withOpacity(0.5),//or any other color you want. e.g Colors.blue.withOpacity(0.5)
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 85/1,
                      //  width:372, //20.0,,
                      child: Drawer(
                          elevation: 20.0,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5.0,
                              sigmaY: 5.0,
                            ),
                            child: ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 222),
                                        child: CircleAvatar(
                                          radius: 40.0,
                                          backgroundImage: NetworkImage('https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/4ZrVLdVKeijzurndz/people-emotion-and-facial-expression-concept-face-of-happy-smiling-middle-aged-woman-at-office_rleqp4y7g_thumbnail-1080_09.png'),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 15,top: 10,right: 100),
                                        child: Text('example123@gmail.com',textAlign:TextAlign.left,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white70),),
                                      ),
                                    ],),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 0.3, color: Colors.blueGrey),),),
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    },
                                    leading: Padding(
                                      padding: const EdgeInsets.only(left: 27),
                                      child: Icon(
                                        Icons.home_outlined, size: 30,
                                        color: Color(0xFFEFF0F1),
                                      ),
                                    ),
                                    title: Text("Home",style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 0.3, color: Colors.blueGrey),),),
                                  child: ExpansionTile(
                                    leading: Padding(
                                      padding: const EdgeInsets.only(left: 27),
                                      child: Icon(
                                        Icons.my_library_books, size: 28,
                                        color: Color(0xFFEFF0F1),
                                      ),
                                    ),
                                    trailing: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                                    title: Text("Tab 1",style: TextStyle(color: Colors.white)),
                                    children: [
                                      ListTile(
                                        onTap: () {
                                        },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(left: 66),
                                          child: Icon(
                                            Icons.cancel_schedule_send, size: 20,
                                            color: Color(0xFFEFF0F1),
                                          ),
                                        ),
                                        title: Text("Example 1",style: TextStyle(color: Colors.white)),
                                      ),
                                      ListTile(
                                        onTap: () {
                                            },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(left: 66),
                                          child: Icon(
                                            Icons.view_compact, size: 30,
                                            color: Color(0xFFEFF0F1),
                                          ),
                                        ),
                                        title: Text("Exmaple 2",style: TextStyle(color: Colors.white)),
                                      ),
                                      ListTile(
                                        onTap: () {
                                                   },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(left: 66),
                                          child: Icon(
                                            Icons.pending_actions, size: 30,
                                            color: Color(0xFFEFF0F1),
                                          ),
                                        ),
                                        title: Text("Example 3",style: TextStyle(color: Colors.white),),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 0.3, color: Colors.blueGrey),),),
                                  child: ListTile(
                                    onTap: () {
                                   },
                                    leading: Padding(
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Icon(
                                        Icons.contact_mail_outlined, size: 28,
                                        color: Color(0xFFEFF0F1),
                                      ),
                                    ),
                                    title: Text("Tab 2",style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 0.3, color: Colors.blueGrey),),),
                                  child: ExpansionTile(
                                    leading: Padding(
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Icon(
                                        Icons.account_box_outlined, size: 28,
                                        color: Color(0xFFEFF0F1),
                                      ),
                                    ),
                                    trailing: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                                    title: Text("Account",style: TextStyle(color: Colors.white)),
                                    children: [
                                      ListTile(
                                        onTap: () {
                                          setState(() {
                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_animation() ) );
                                          });
                                        },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(left: 66),
                                          child: Icon(
                                            Icons.content_paste_sharp, size: 30,
                                            color: Color(0xFFEFF0F1),
                                          ),
                                        ),
                                        title: Text("Login",style: TextStyle(color: Colors.white)),
                                      ),
                                      ListTile(
                                        onTap: () {
                                     },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(left: 66),
                                          child: Icon(
                                            Icons.logout, size: 28,
                                            color: Color(0xFFEFF0F1),
                                          ),
                                        ),
                                        title: Text("Logout",style: TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                body:
                Container(child: _widgetOptions[currentPage]),
                bottomNavigationBar: ConvexAppBar(
                  items: [
                    TabItem(icon: Icons.dashboard_outlined, title: 'Home'),
                    TabItem(icon: Icons.inventory, title: 'Tab second'),
                    TabItem(icon: Icons.spa_sharp, title: 'Tab third'),

                  ],
                  onTap: onItemTapped,
                  activeColor: Color(0xFF53DFE1),
                  backgroundColor: Color(0xFF2A3A36),
                  initialActiveIndex: currentPage, //optional, default as 0
                ),
              );

  }

  void onItemTapped(int index) {
    setState(() {
      // currentPage = index;
    });
  }

}

