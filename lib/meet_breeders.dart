import 'package:agriguide/agriguide_app.dart';
import 'package:agriguide/daily_activities.dart';
import 'package:agriguide/farm_setup.dart';
import 'package:agriguide/feeding.dart';
import 'package:agriguide/health.dart';
import 'package:agriguide/inventory.dart';
import 'package:flutter/material.dart';

class MeetBreeders extends StatefulWidget {
  const MeetBreeders({Key? key}) : super(key: key);

  @override
  _MeetBreedersState createState() => _MeetBreedersState();
}

class _MeetBreedersState extends State<MeetBreeders> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AgriguideApp(),
    const Inventory(),
    const DailyActivities(),
    const Health(),
    const FarmSetup(),
    const Feeding(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Add functionality to open menu pop-up bar here
            },
          ),
        ],
        title: const Text('Meet Breeders'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 1.0,
          children: [
            _buildContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DailyActivities()));
              },
              imageAsset: 'assets/images/daily.jpeg',
              label: 'Daily Activities',
            ),
            _buildContainer(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FarmSetup()));
              },
              imageAsset: 'assets/images/brlrsetup.jpeg',
              label: 'Farm Setup',
            ),
            _buildContainer(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Health()));
              },
              imageAsset: 'assets/images/poultrymeds.jpg',
              label: 'Health',
            ),
            _buildContainer(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Feeding()));
              },
              imageAsset: 'assets/images/chickenfeeding.jpg',
              label: 'Feeding',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Inventory',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildContainer({
    required VoidCallback onTap,
    required String imageAsset,
    required String label,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset),
            const SizedBox(height: 8.0),
            Text(label),
          ],
        ),
      ),
    );
  }
}
