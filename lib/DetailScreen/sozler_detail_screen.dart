import 'package:flutter/material.dart';
import 'package:lirica/Data/sozler.dart';

class SozlerDetailScreen extends StatelessWidget {
  final String category;
  const SozlerDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredSozler = sozler.where((q) => q.kategori == category).toList();
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: filteredSozler.length,
                itemBuilder: (context, index) {
                  final ozlu_sozler = filteredSozler[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey.shade300,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(ozlu_sozler.text, textAlign: TextAlign.center),
                          Text('- ${ozlu_sozler.author} -'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
