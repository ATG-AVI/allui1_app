import 'package:flutter/material.dart';
import 'profile_page.dart'; // Make sure to import the profile page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

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
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {
            // Menu button action
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Start Project',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 40), // Gap between AppBar and text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Discover The Ultimate\nProject Platform for\nManagement',
              style: TextStyle(
                  color: Colors.white, fontSize: 28), // Bigger text size
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 40), // Increased gap between text and search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Space between TextField and Icon
                IconButton(
                  icon: Icon(Icons.search, color: Colors.blue),
                  onPressed: () {
                    // Search button action
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 40), // Gap between search bar and tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12), // Same padding as Start Project button
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Project Tools',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(height: 16), // Space between each item
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12), // Same padding as Start Project button
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Resources',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(height: 16), // Space between each item
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12), // Same padding as Start Project button
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Support',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
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
