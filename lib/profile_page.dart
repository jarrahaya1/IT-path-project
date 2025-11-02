import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<Map<String, String>> users = [
    {
      'name': 'Aya Aljarrah',
      'email': 'jarrahaya1@gmail.com',
      'linkedin':
          'https://www.linkedin.com/in/aya-aljarrah-6493722a7?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
    },
    {
      'name': 'Asmaa Elaywi',
      'email': 'asmaatalal54@gmail.com',
      'linkedin': 'https://www.linkedin.com/in/asmaatalalelaywi',
    },
    {
      'name': 'Ghaida Ayasrah',
      'email': 'Ghaida.ghalib98@gmail.com',
      'linkedin':
          'https://www.linkedin.com/in/ghaida-ayasrah?utm_source=share_via&utm_content=profile&utm_medium=member_android',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      appBar: AppBar(
        title: const Text('About us'),
        backgroundColor: const Color.fromARGB(255, 98, 185, 247),
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'We are a team who loves technology and enjoys programming and mobile app development.Our journey started because we like solving problems and turning creative ideas into useful, easy-to-use apps.We believe technology can make life easier and smarter — that’s what keeps us motivated every day.We love learning new things, building projects, and sharing our knowledge with others.If you have any questions, ideas, or just want to talk, feel free to reach out — we’d be happy to connect with you! 💻',

              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final displayName =
                    (user['name'] != null && user['name']!.isNotEmpty)
                    ? user['name']!
                    : 'Unknown User';

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: const Color.fromARGB(
                            255,
                            98,
                            185,
                            247,
                          ),
                          child: Text(
                            (user['name'] != null && user['name']!.isNotEmpty)
                                ? user['name']![0].toUpperCase()
                                : '?',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          displayName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          user['email'] ?? 'No Email',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.email_outlined),
                              color: Colors.blueAccent,
                              onPressed: () {
                                final email = user['email'];
                                if (email != null && email.isNotEmpty) {
                                  launchUrl(Uri.parse('mailto:$email'));
                                }
                              },
                              tooltip: 'Send Email',
                            ),
                            IconButton(
                              icon: const Icon(Icons.link),
                              color: Colors.blueAccent,
                              onPressed: () async {
                                final Uri url = Uri.parse(
                                  user['linkedin'] ?? '',
                                );
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(
                                    url,
                                    mode: LaunchMode.externalApplication,
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('لم يتم فتح رابط LinkedIn'),
                                    ),
                                  );
                                }
                              },
                              tooltip: 'Open LinkedIn',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
