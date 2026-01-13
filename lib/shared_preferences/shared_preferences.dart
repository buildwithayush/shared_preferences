import 'package:flutter/material.dart';
import 'package:local_storage/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLearn extends StatefulWidget {
  const SharedPreferencesLearn({super.key});

  @override
  State<SharedPreferencesLearn> createState() => _SharedPreferencesLearnState();
}

class _SharedPreferencesLearnState extends State<SharedPreferencesLearn> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shared Preferences Learn')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: 'Enter some data',
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('name', controller.text.toString());
                await prefs.setBool('isloggedin', true);
                if (!mounted) return;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
                debugPrint("Saved");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              child: const Text(
                'Save Data',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? name = prefs.getString('name');
                controller.text = name!;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Retrieve Data',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}