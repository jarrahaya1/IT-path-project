import 'package:flutter/material.dart';

final List<Map<String, String>> paths = [
  {
    'image': 'assets/cyber-security.png',
    'title': 'Cybersecurity',
    'description':
        'مقدمة عن الأمن السيبراني، التهديدات، أدوات الحماية، والمسارات المهنية (مثل Penetration Tester, SOC Analyst).',
  },
  {
    'image': 'assets/computer.png',
    'title': 'Networking',
    'description':
        'شرح أساسيات الشبكات، أنواع البروتوكولات (TCP/IP, HTTP, DNS)، تصميم الشبكات، أجهزة التوجيه والسويتشات.',
  },
  {
    'image': 'assets/app.png',
    'title': 'Mobile Development',
    'description':
        'تطوير تطبيقات الهاتف باستخدام Flutter أو Android Studio أو Swift.',
  },
  {
    'image': 'assets/data.png',
    'title': 'Web Development',
    'description':
        'مقدمة عن الأمن السيبراني، التهديدات، أدوات الحماية، والمسارات المهنية (مثل Penetration Tester, SOC Analyst).',
  },
  {
    'image': 'assets/software-development.png',
    'title': 'Software Engineering',
    'description':
        'مراحل تطوير البرمجيات (SDLC)، اختبار الأنظمة، والبرمجة النظيفة.',
  },
  {
    'image': 'assets/server.png',
    'title': 'Cloud Computing',
    'description':
        'مقدمة عن الأمن السيبراني، التهديدات، أدوات الحماية، والمسارات المهنية (مثل Penetration Tester, SOC Analyst).',
  },
  {
    'image': 'assets/neural-network.png',
    'title': 'Artificial Intelligence',
    'description':
        'مقدمة عن الذكاء الاصطناعي، التعلم الآلي، تطبيقاته في الأمن، والصناعات الذكية.',
  },
  {
    'image': 'assets/software-development.png',
    'title': 'Software Engineering',
    'description':
        'مراحل تطوير البرمجيات (SDLC)، اختبار الأنظمة، والبرمجة النظيفة.',
  },
  {
    'image': 'assets/database-storage.png',
    'title': 'Database',
    'description':
        'أساسيات قواعد البيانات، SQL، العلاقات بين الجداول، والأمن في قواعد البيانات.',
  },
];

class PathListPage extends StatelessWidget {
  const PathListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IT Path'),
        backgroundColor: const Color.fromARGB(255, 193, 222, 245),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 193, 222, 245),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  'IT Path Menu',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: paths.length,
        itemBuilder: (context, index) {
          final path = paths[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PathDetailPage(path: path)),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    path['image']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    path['title']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PathDetailPage extends StatelessWidget {
  final Map<String, String> path;

  const PathDetailPage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(path['title']!),
        backgroundColor: const Color.fromARGB(255, 98, 185, 247),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              path['image']!,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              path['title']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              path['description']!,
              style: const TextStyle(fontSize: 18, height: 1.5),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
