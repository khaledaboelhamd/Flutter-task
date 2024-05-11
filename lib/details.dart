import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(113, 225, 224, 224),
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
        actions: const [
          Icon(Icons.star_outline),
          SizedBox(width: 20),
          Icon(Icons.settings),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(113, 225, 224, 224),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 0.8),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          'https://picsum.photos/${1001 + index}/1004',
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 35, 15, 10),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Summary",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "some details, but in a light tone \n as you see fit",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 500,
              height: 40,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 10, 0),
                child: Text(
                  " About This Photo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 35, 15, 0),
              child: Container(
                width: 500,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 10, 0),
                  child: Column(
                    children: [
                      Text(
                        "Some details too with a light tone, as you see fit.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
