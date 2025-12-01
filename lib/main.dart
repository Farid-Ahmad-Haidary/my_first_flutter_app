import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farid Ahmad Haidary Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farid Ahmad Haidary'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // ***********************
            // HERO / INTRO SECTION
            // ***********************
            Container(
              width: double.infinity,
              height: 330,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                          size: 70, color: Colors.blueAccent),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Farid Ahmad Haidary",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Flutter Developer • Mobile Developer • Web Developer",
                      style: TextStyle(fontSize: 17, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Final-year Student at Kabul University, Afghanistan",
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            // ***********************
            // ABOUT ME SECTION
            // ***********************
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "My name is Farid Ahmad Haidary, from Afghanistan. "
                        "I am a passionate Mobile Developer specializing in Flutter, "
                        "and I also work as a Web Developer. "
                        "I love building beautiful, fast, and modern applications. "
                        "Currently, I am a final-year student at Kabul University "
                        "and actively working on improving my skills in full-stack "
                        "development, modern UI/UX, and scalable app design.",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // ***********************
            // SKILLS SECTION
            // ***********************
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "Skills",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(height: 40),

                  Wrap(
                    spacing: 30,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: [
                      SkillCard(
                        icon: Icons.flutter_dash,
                        title: "Flutter",
                        description: "Cross-platform app development",
                      ),
                      SkillCard(
                        icon: Icons.phone_android,
                        title: "Mobile Development",
                        description: "Android apps with beautiful UI",
                      ),
                      SkillCard(
                        icon: Icons.web,
                        title: "Web Development",
                        description: "Responsive & modern websites",
                      ),
                      SkillCard(
                        icon: Icons.code,
                        title: "Programming",
                        description: "Dart • JavaScript • HTML • CSS",
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ***********************
            // PROJECTS SECTION
            // ***********************
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(height: 40),

                  ProjectCard(
                    title: "Personal Portfolio App",
                    description:
                    "A modern Flutter-based portfolio application showcasing skills and experience.",
                  ),
                  SizedBox(height: 20),

                  ProjectCard(
                    title: "Mobile UI Templates",
                    description:
                    "Beautiful Flutter UI screens such as login, signup, dashboards, and more.",
                  ),
                  SizedBox(height: 20),

                  ProjectCard(
                    title: "Web Projects",
                    description:
                    "Fully responsive static websites and modern landing pages.",
                  ),
                ],
              ),
            ),

            // ***********************
            // CALL TO ACTION
            // ***********************
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Want to Work With Me?',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blueAccent,
                      padding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    child: Text('Contact Me'),
                  )
                ],
              ),
            ),

            // ***********************
            // FOOTER
            // ***********************
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.blueGrey[900],
              child: Center(
                child: Text(
                  '© 2025 Farid Ahmad Haidary | Afghanistan | All Rights Reserved',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --------------------------------------
// SKILL CARD WIDGET
// --------------------------------------
class SkillCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  SkillCard(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blueAccent),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// --------------------------------------
// PROJECT CARD WIDGET
// --------------------------------------
class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
