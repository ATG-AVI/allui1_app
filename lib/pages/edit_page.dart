import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the ProfilePage
          },
        ),
        title: Text(
          'Edit Project',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Profile>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Create>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Edit Project>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Image',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                Text(
                  'You can upload image below, at least 1024x523px, it will be cropped to 17.9 ratio.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 16),
                Center(
                  child: Image.asset('lib/images/projectimage.png'),
                ),
                SizedBox(height: 16),
                Text(
                  'Title',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'My first project',
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
                SizedBox(height: 16),
                Text(
                  'Subtitle',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter subtitle here',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
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
        currentIndex: 0, // Assuming you want to highlight the first item
        onTap: (index) {
          // Handle bottom navigation tap if necessary
        },
      ),
    );
  }
}
