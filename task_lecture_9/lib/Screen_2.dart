import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Color(0xFFFF7A45),
                    child: Text(
                      'S',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Good morning ',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                          const Text('👋', style: TextStyle(fontSize: 13)),
                        ],
                      ),
                      const Text(
                        'Sara Ahmed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_outlined, color: Color(0xFF4B5563)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search courses, books...',
                          hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
                          prefixIcon: Icon(Icons.search, color: Color(0xFF9CA3AF)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5B50EE),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.tune, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF5B50EE),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Learn Flutter\nin 30 days',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF5B50EE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: const Text(
                        'Start now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF5B50EE),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    icon: Icons.code,
                    title: 'Code',
                    bgColor: Color(0xFFEEF2FF),
                    iconColor: Color(0xFF5B50EE),
                  ),
                  CategoryItem(
                    icon: Icons.sentiment_satisfied_alt,
                    title: 'Design',
                    bgColor: Color(0xFFFFEDD5),
                    iconColor: Color(0xFFF97316),
                  ),
                  CategoryItem(
                    icon: Icons.bar_chart,
                    title: 'Data',
                    bgColor: Color(0xFFECFDF5),
                    iconColor: Color(0xFF10B981),
                  ),
                  CategoryItem(
                    icon: Icons.bookmark_border,
                    title: 'Books',
                    bgColor: Color(0xFFFEF3C7),
                    iconColor: Color(0xFFD97706),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF5B50EE),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              const PopularCard(
                icon: Icons.code,
                bgColor: Color(0xFF5B50EE),
                title: 'Flutter Basics',
                subtitle: '12 lessons · 4h 20m',
                price: '\$19',
              ),
              const SizedBox(height: 12),
              const PopularCard(
                icon: Icons.sentiment_satisfied_alt,
                bgColor: Color(0xFFF97316),
                title: 'UI Design Basics',
                subtitle: '8 lessons · 2h 45m',
                price: '\$15',
              ),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF5B50EE),
        unselectedItemColor: const Color(0xFF9CA3AF),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color bgColor;
  final Color iconColor;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: iconColor, size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF4B5563),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class PopularCard extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final String title;
  final String subtitle;
  final String price;

  const PopularCard({
    super.key,
    required this.icon,
    required this.bgColor,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5B50EE),
            ),
          ),
        ],
      ),
    );
  }
}
