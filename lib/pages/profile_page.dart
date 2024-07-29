import 'package:flutter/material.dart';
import 'edit_page.dart'; // Import the EditPage

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the HomePage
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditPage()), // Navigate to EditPage
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Button color
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(
              'Edit Project',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'lib/images/pic1.jpg'), // Ensure you have the image in your assets
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Edit button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(24.0), // Make it rounder
                          ),
                        ),
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            24.0), // Same roundness as Edit button
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 8),
                          child: Text(
                            '...',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Aviral',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Placeholder action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button background color
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6), // Reduced padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Tasks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14), // Reduced font size
                    ),
                  ),
                ),
                SizedBox(width: 8), // Reduced SizedBox width
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Placeholder action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button background color
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6), // Reduced padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Goals',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14), // Reduced font size
                    ),
                  ),
                ),
                SizedBox(width: 8), // Reduced SizedBox width
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Placeholder action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button background color
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6), // Reduced padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Completion',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14), // Reduced font size
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('120',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('Following',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
                Column(
                  children: [
                    Text('48k',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('Followers',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Archived',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('24',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
                Column(
                  children: [
                    Text('Created',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('56',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
              ],
            ),
            SizedBox(
                height: 100), // Increased space to lower the text statement
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Hello, my name is Aviral. I am 18 years old and currently pursuing a degree in Computer Science and Engineering (CSE) at SRM University. I am also learning Flutter, a UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/twitter.png', width: 24, height: 24),
            label: 'Twitter',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/facebook.png', width: 24, height: 24),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon:
                Image.asset('lib/images/instagram.jpg', width: 24, height: 24),
            label: 'Instagram',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
