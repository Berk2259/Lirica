import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/sozler_detail_screen.dart';

class SozlerScreen extends StatelessWidget {
  const SozlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          children: [
            KategoriContainer(
              title: 'Aşk',
              description: 'Aşk sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/heart.png',
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SozlerDetailScreen(category: 'Aşk'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Motivasyon',
              description: 'Motivasyon sözlerini görüntülemek içi tıklayın',
              icon: 'assets/icons/motivation.png',
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Motivasyon'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Duygusal',
              description: 'Motivasyon sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/depression.png',
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Duygusal'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Komik',
              description: 'Komik sözleri görüntülemek için tıklayın',
              icon: 'assets/icons/lol.png',
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Duygusal'),
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

class KategoriContainer extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onfunction;
  final String icon;
  const KategoriContainer({
    super.key,
    required this.title,
    required this.onfunction,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onfunction,
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 12, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(description, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
