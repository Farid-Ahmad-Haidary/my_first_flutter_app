import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color mochaMousse = const Color(0xFFA0785A);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farid Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mochaMousse,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: mochaMousse,
        ),
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  final Color mocha = const Color(0xFFA0785A);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isWide = width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Farid Ahmad Haidary'),
        centerTitle: true,
        elevation: 4,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // HERO SECTION
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mocha, mocha.withOpacity(0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  // Profile photo
                  CircleAvatar(
                    radius: isWide ? 90 : 70,
                    backgroundImage: AssetImage("assets/profile.png"),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Farid Ahmad Haidary",
                    style: TextStyle(
                      fontSize: isWide ? 32 : 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Mobile Developer • Flutter Developer • Web Developer\nFinal Year Student, Kabul University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isWide ? 18 : 15,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: mocha,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                    ),
                    child: const Text(
                      "Contact Me",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),

            // SKILLS SECTION
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    "My Skills",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: mocha),
                  ),
                  const SizedBox(height: 30),

                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: const [
                      SkillCard(icon: Icons.phone_android, title: "Flutter Development"),
                      SkillCard(icon: Icons.web, title: "Web Development"),
                      SkillCard(icon: Icons.code, title: "Python / Dart"),
                      SkillCard(icon: Icons.school, title: "Problem Solving"),
                    ],
                  )
                ],
              ),
            ),

            // ABOUT SECTION
            Container(
              padding: const EdgeInsets.all(35),
              width: double.infinity,
              color: Colors.grey[100],
              child: Column(
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 26,
                      color: mocha,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "I am Farid Ahmad Haidary from Afghanistan. "
                        "A passionate Flutter, Mobile & Web Developer. "
                        "Final year student at Kabul University. "
                        "I love building modern, responsive and smooth applications.",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // FOOTER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: mocha,
              child: const Center(
                child: Text(
                  "© 2025 Farid Ahmad Haidary | Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const SkillCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: const Color(0xFFA0785A)),
          const SizedBox(height: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
