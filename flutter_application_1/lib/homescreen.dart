import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 116, 11),
        title: Text(
          'Welcome Home',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notification button action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome message
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hello, User!',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 32,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Image Carousel
            Container(
              height: 200,
              child: PageView(
                
              ),
            ),
            // Feature highlights
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Features',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 28,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildFeatureTile(
                    icon: Icons.check_circle,
                    title: 'Task Management',
                    description: 'Manage your tasks efficiently.',
                  ),
                  _buildFeatureTile(
                    icon: Icons.timeline,
                    title: 'Progress Tracking',
                    description: 'Track your progress over time.',
                  ),
                  _buildFeatureTile(
                    icon: Icons.group,
                    title: 'Collaboration',
                    description: 'Work with your team seamlessly.',
                  ),
                ],
              ),
            ),
            // Action Buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                      elevation: 4,
                    ),
                    onPressed: () {
                      // Action for the first button
                    },
                    child: const Text('Get Started'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.deepPurpleAccent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Action for the second button
                    },
                    child: const Text(
                      'Learn More',
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFeatureTile({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurpleAccent),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
