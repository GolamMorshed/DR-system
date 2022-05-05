import 'package:flutter/material.dart';
import 'add_patients.dart';
import 'drawer_header.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var currentPage = DrawerSections.dashboard;


  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = AddPatients();
    }
    // } else if (currentPage == DrawerSections.contacts) {
    //   container = AddPatients();
    // } else if (currentPage == DrawerSections.events) {
    //   container = EventsPage();
    // } else if (currentPage == DrawerSections.notes) {
    //   container = NotesPage();
    // } else if (currentPage == DrawerSections.settings) {
    //   container = SettingsPage();
    // } else if (currentPage == DrawerSections.notifications) {
    //   container = NotificationsPage();
    // } else if (currentPage == DrawerSections.privacy_policy) {
    //   container = PrivacyPolicyPage();
    // } else if (currentPage == DrawerSections.send_feedback) {
    //   container = SendFeedbackPage();
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to DR System'),
      ),
      body: Container(
        child: Center(
          child: Text("Dashbaord"),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget MyDrawerItems(){
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Add Patient", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Patients List", Icons.people_alt_outlined,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Customer Care", Icons.support_agent,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Logout", Icons.logout,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(icon,size: 20,color: Colors.black,)),
              Expanded(
                  flex: 3,
                  child: Text(title, style: TextStyle(color: Colors.black,fontSize: 16),))
            ],
          ),
        ),
      ),
    );
  }
}
enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}