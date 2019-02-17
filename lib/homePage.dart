import 'package:flutter/material.dart';
import 'aboutPage.dart';
import 'educationPage.dart';
import 'experiencePage.dart';
import 'skillsPage.dart';
import 'settingsPage.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{

        '/about': (BuildContext context)=> new AboutPage(),
        '/education': (BuildContext context)=> new EducationPage(),
        '/experience': (BuildContext context)=> new ExperiencePage(),
        '/skills': (BuildContext context)=> new SkillsPage(),
        '/settings': (BuildContext context)=> new SettingsPage()
        },

    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Resume"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Sandeep Rawat"),
                accountEmail: new Text("sandy4u1994@live.com"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://lh3.googleusercontent.com/-T0YJIhIiViU/WaBWW3e8qxI/AAAAAAAADzw/sS1q7mMkmuAU1QMK0DLh0-IHs87WkRFHACEwYBhgL/w140-h140-p/img1488181855060.jpg"),
                    ),
                ),
                 decoration: new BoxDecoration(
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                     image: NetworkImage("https://lh3.googleusercontent.com/-1aqo4iSy6-g/WWBSyHgezQI/AAAAAAAADw8/t6decZAp_ZorIKIHlrNEOQAZReSkk5ATgCEwYBhgL/w140-h139-p/IMG_20170629_074852.jpg")
             ),
                )
                ),

            new ListTile(
              title:new Text("Home"),
              trailing: new Icon(Icons.home),
              ),
            new ListTile(
              title:new Text("About Me"),
              trailing: new Icon(Icons.account_circle),
              onTap: (){
                Navigator.of(context).pushNamed('/about');
              },
            ),
            new ListTile(
              title:new Text("Education"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pushNamed('/education');
              },
            ),
            new ListTile(
              title:new Text("Experience"),
              trailing: new Icon(Icons.work),
              onTap: (){
                Navigator.of(context).pushNamed('/experience');
              },
            ),
            new ListTile(
              title:new Text("Skills"),
              trailing: new Icon(Icons.verified_user),
              onTap: (){
                Navigator.of(context).pushNamed('/skills');
              },
            ),
            new ListTile(
              title:new Text("Settings"),
              trailing: new Icon(Icons.settings),
              onTap: (){
                Navigator.of(context).pushNamed('/settings');
              },
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Dashboard"),

        ),
      ),
    );


  }
}