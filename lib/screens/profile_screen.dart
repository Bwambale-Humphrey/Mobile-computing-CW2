// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'edit_profile_screen.dart'; // Import the EditProfileScreen
import 'settings_screen.dart'; // Import the SettingsScreen
import '../widgets/custom_drawer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.pinkAccent,
        elevation: 4,
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture with Circular Border
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/muks.jpg',
                ), // Profile picture
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 20),
              // User Name
              Text(
                'Great Fashions User',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 10),
              // Email
              Text(
                'muksvykingz@greatfashions.com',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),

              // Bio Section
              Text(
                'Fashion enthusiast and lover of stylish looks. Here to inspire and discover the latest trends.',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Action Buttons (e.g., Edit Profile, Log Out)
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Edit Profile screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Edit Profile', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Navigate to the Settings screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Settings', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Add action for logout if needed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Log Out', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
