import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ["Today's grocery list", "Rich dad Poor dad quotes"];
    List<String> times = ["June 26, 2022 08:05 PM", "June 22, 2022 05:00 PM"];
    List<Color> colors = [Colors.greenAccent.shade100, Colors.yellow.shade200];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow.shade600,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 35,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 30.0, left: 30, top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Notepad",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Search notes"),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      noteCart(colors[index], titles[index], times[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget noteCart(Color color, String title, String time) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
