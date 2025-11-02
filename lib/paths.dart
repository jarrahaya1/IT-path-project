import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profile_page.dart';

final List<Map<String, dynamic>> paths = [
  {
    'image': 'assets/cyber-security.png',
    'title': 'Cybersecurity',
    'description':
        'Cybersecurity is the combination of methods, processes, tools, and behaviors that protect computer systems, networks, and data from cyberattacks and unauthorized access. Although deeply rooted in technology, the effectiveness of cybersecurity also very much depends on people.',
    'links': [
      {
        'title': 'Learn more about What is cybersecurity.',
        'url':
            'https://www.cisco.com/site/us/en/learn/topics/security/what-is-cybersecurity.html#:~:text=Cybersecurity%20is%20the%20practice%20of,or%20interrupting%20normal%20business%20processes.',
      },
      {
        'title':
            ' You can Start Learning here(you can choose Arabic or English language).',
        'url': 'https://www.netacad.com/cybersecurity',
      },
      {
        'title': 'Cyber Security Fundamentals course.',
        'url':
            'https://www.youtube.com/watch?v=VyXQ8CMIQl4&list=PLh2Jy0nKL_j1WZMzITHgUuzaadpSULlMm',
      },
      {
        'title':
            'Hands-on learning for real cyber skills,TryHackMe: where theory meets practicehttps://tryhackme.com/.',
        'url': 'https://tryhackme.com/',
      },
      {
        'title':
            'Hackviser: Empowering learners to bridge the gap between theory and practice in cybersecurity.',
        'url': 'https://hackviser.com/',
      },
      {
        'title':
            'If you like podcasts you can hear this one about cybersecurity in arabic language.',
        'url': 'https://www.youtube.com/watch?v=NIVfArOgRZ4',
      },
    ],
  },
  {
    'image': 'assets/computer.png',
    'title': 'Networking',
    'description':
        'Networking, or computer networking, involves connecting two or more computing devices (for example, desktop computers, laptops, mobile devices, routers, applications) to enable the transmission and exchange of information and resources. ',
    'links': [
      {
        'title': 'Cisco - From Basics to Advanced Networking Skills.',
        'url':
            'https://www.cisco.com/site/us/en/products/networking/index.html',
      },
      {
        'title': 'Learn Networks Fast From This Computer Network Tutorial.',
        'url':
            'https://www.geeksforgeeks.org/computer-networks/last-minute-notes-computer-network/',
      },

      {
        'title': 'Networking Fundamentals Playlist-compTIA Network+ course.',
        'url':
            'https://www.youtube.com/watch?v=RFK4Kc_aJYg&list=PLH-n8YK76vIiuIZoWvHL7AvtrDV7hR3He&index=1',
      },
      {
        'title': 'perfect playlist to learn network-CCNA course.',
        'url':
            'https://www.youtube.com/watch?v=VMI1z5h5Jy4&list=PLLlr6jKKdyK3JYsGq_jEcNx-EHF4lqXHP&index=1',
      },
      {
        'title': 'Check out this must-hear networking podcast!',
        'url': 'https://www.youtube.com/watch?v=PZKXZ5yb4vA',
      },
    ],
  },
  {
    'image': 'assets/app.png',
    'title': 'Mobile Development',
    'description':
        ' Mobile DevelopmentMobile development is all about creating applications for smartphones and tablets, such as Android and iOS apps.It involves learning how to design user interfaces, connect apps to the internet, and optimize performance.Ideal for learners who want to build interactive apps people use every day.',
    'links': [
      {
        'title': 'What is mobile application development?  ',
        'url':
            'https://www.ibm.com/think/topics/mobile-application-development',
      },
      {
        'title':
            ' Master Dart step by step — the foundation of Flutter development! ',
        'url': 'https://www.geeksforgeeks.org/dart/dart-tutorial/ ',
      },
      {
        'title':
            ' Build powerful Android apps with the official Android Developers resources! ',
        'url': 'https://developer.android.com/',
      },

      {
        'title':
            'From zero to Flutter hero: Start building high‑quality apps with Dart and Flutter today.',
        'url': 'https://flutter.dev/',
      },

      {
        'title':
            ' From basics to hands-on projects… discover the power of Dart & Flutter in this tutorial series.',
        'url':
            'https://youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9&si=2Q47Cp0gvGr5uyb1',
      },
    ],
  },
  {
    'image': 'assets/data.png',
    'title': 'Web Development',
    'description':
        ' Web development focuses on building websites and web applications that run on the internet.It includes learning languages like HTML, CSS, and JavaScript for the front end, as well as server and database technologies for the back end. Great for anyone who wants to design and develop modern, professional web experiences..',
    'links': [
      {
        'title':
            'What Is Web Development? Discover the skills behind every website you visit!',
        'url': 'https://brainstation.io/career-guides/what-is-web-development',
      },
      {
        'title':
            'Master HTML, CSS, JavaScript and more — step-by-step tutorials for beginners and pros alike',
        'url': 'https://www.w3schools.com/',
      },

      {
        'title':
            'Learn to code for free! Interactive lessons and projects to level up your web development skills',
        'url': 'https://www.freecodecamp.org/',
      },
      {
        'title':
            'web development course on YouTube — watch, learn, and start coding today',
        'url':
            'https://www.youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji',
      },
    ],
  },
  {
    'image': 'assets/software-development.png',
    'title': 'Software Engineering',
    'description':
        'Software engineering focuses on designing, developing, and maintaining software systems in a structured and efficient way.It teaches how to manage software projects, analyze requirements, design scalable solutions, and ensure code quality.Perfect for those who want to understand how large software systems are built step by step.',
    'links': [
      {
        'title':
            'What is Software Engineering? Explore the process behind building reliable and efficient software.',
        'url': 'https://www.mtu.edu/cs/undergraduate/software/what/',
      },
      {
        'title':
            'Learn Software Engineering concepts with detailed tutorials and examples on GeeksforGeeks! ',
        'url': 'https://www.geeksforgeeks.org/software-engineering/',
      },
      {
        'title':
            ' Understand the full Software Development Life Cycle (SDLC) — from planning to deployment!',
        'url':
            'https://www.tutorialspoint.com/software_engineering/software_development_life_cycle.htm',
      },
      {
        'title':
            'Master software testing techniques and tools — ensure quality in every application!',
        'url': 'https://www.guru99.com/software-testing.html',
      },
    ],
  },
  {
    'image': 'assets/server.png',
    'title': 'Cloud Computing',
    'description':
        ' Cloud computing is a technology that allows access to computing resources—such as servers, storage, databases, and software—over the internet instead of relying on local devices.It enables individuals and businesses to run applications, store data, and manage services flexibly and at scale, reducing costs and dependence on traditional infrastructure.',
    'links': [
      {
        'title': 'Codecademy-Your First Step to the Cloud  ',
        'url': 'https://www.codecademy.com/catalog/subject/cloud-computing',
      },
      {
        'title': 'Coursera-Build Your Cloud Skills',
        'url':
            'https://www.coursera.org/browse/information-technology/cloud-computing',
      },
      {
        'title': 'Udemy – Cloud Courses for All Levels',
        'url':
            'https://www.udemy.com/topic/cloud-computing/?srsltid=AfmBOorPaUhjKqaEYsH7kH6HRmx9uDtDTK9adtIvumdbLz8Vxc65gUrS',
      },
      {
        'title': 'YouTube Playlist – Cloud Computing Made Easy',
        'url':
            'https://www.youtube.com/playlist?list=PLEiEAq2VkUUIJ3o1tehvtux0_Ynf42CBN',
      },
    ],
  },
  {
    'image': 'assets/neural-network.png',
    'title': 'Artificial Intelligence',
    'description':
        '  Artificial Intelligence is the field of computer science that focuses on creating machines and software capable of performing tasks that normally require human intelligence.This includes learning from data, recognizing patterns, making decisions, understanding language, and solving problems.AI is widely used in applications like virtual assistants, self-driving cars, recommendation systems, and predictive analytics.',
    'links': [
      {
        'title':
            'What is AI (Artificial Intelligence)? Definition, Types, Examples & Use Cases',
        'url':
            'https://www.techtarget.com/searchenterpriseai/definition/AI-Artificial-Intelligence',
      },
      {
        'title': 'Coursera – AI For Everyone',
        'url':
            'https://www.coursera.org/learn/ai-for-everyone?utm_source=chatgpt.com',
      },
      {
        'title': 'Simplilearn - AI Courses.',
        'url':
            'https://www.simplilearn.com/artificial-intelligence-certification-training-course',
      },
      {
        'title': 'YouTube Playlist – AI Basics',
        'url':
            'https://www.youtube.com/playlist?list=PLEiEAq2VkUULyr_ftxpHB6DumOq1Zz2hq',
      },
    ],
  },
  {
    'image': 'assets/database-storage.png',
    'title': 'Database',
    'description':
        '   A database is an organized collection of data that is stored and managed electronically. It allows users to efficiently store, retrieve, update, and manage information.',
    'links': [
      {
        'title': 'Coursera – Catalog of Database Management Courses',
        'url': 'https://www.coursera.org/courses?query=database%20management',
      },
      {
        'title': 'Coursera – “Database Management Essentials”',
        'url': 'https://www.coursera.org/learn/database-management',
      },
      {
        'title': 'Oracle Middle East – Training & Certification',
        'url': 'https://www.oracle.com/middleeast/education/training/',
      },
      {
        'title': 'YouTube Playlist – Database Management Systems',
        'url':
            'https://www.youtube.com/playlist?list=PLBlnK6fEyqRi_CUQ-FXxgzKQ1dwr_ZJWZ',
      },
    ],
  },
];

class PathListPage extends StatefulWidget {
  const PathListPage({super.key});

  @override
  State<PathListPage> createState() => _PathListPageState();
}

class _PathListPageState extends State<PathListPage> {
  final List<Map<String, dynamic>> favoritePaths = [];

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
              leading: const Icon(Icons.favorite),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FavoritesPage(favoritePaths: favoritePaths),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About us'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
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
          final isFavorite = favoritePaths.contains(path);

          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PathDetailPage(path: path),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      path['image']!,
                      width: 80,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  path['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      if (isFavorite) {
                        favoritePaths.remove(path);
                      } else {
                        favoritePaths.add(path);
                      }
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PathDetailPage extends StatelessWidget {
  final Map<String, dynamic> path;

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
              style: const TextStyle(fontSize: 14, height: 1.5),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 24),
            for (var link in path['links'])
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    final Uri url = Uri.parse(link['url']);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('لم يتم فتح الرابط')),
                      );
                    }
                  },
                  icon: const Icon(Icons.link),
                  label: Text(
                    link['title'],
                    style: const TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<Map<String, dynamic>> favoritePaths;

  const FavoritesPage({super.key, required this.favoritePaths});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: const Color.fromARGB(255, 98, 185, 247),
      ),
      body: favoritePaths.isEmpty
          ? const Center(child: Text('No favorites added yet.'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: favoritePaths.length,
              itemBuilder: (context, index) {
                final path = favoritePaths[index];
                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PathDetailPage(path: path),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            path['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
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
                );
              },
            ),
    );
  }
}
