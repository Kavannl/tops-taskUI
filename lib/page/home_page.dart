import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Training",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      Icon(Icons.date_range),
                      Text(
                        "19 April",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              const Row(
                children: [
                  Text(
                    "Your Program",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Details",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade400,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        topRight: Radius.circular(110))),
                child: const Padding(
                  padding: EdgeInsets.only(top: 24.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next Workout",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Legs Toning\nand Glutes Workout",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "68 min",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(
                            Icons.play_circle,
                            size: 60,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/girll.jpeg",
                        height: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Column(
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //     left: 48.0,
                            //     bottom: 28,
                            //   ),
                            //   child:
                            Text(
                              "You are doing great",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blue.shade400),
                            ),
                            const Text("Time : 1 min"),
                            const Text("you have burnt lot of calories")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "  Area of Focus",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0,
                  ),
                  itemCount: 05,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        child: Center(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Image.asset(
                                "assets/arm.jpeg",
                                height: 60,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Arms",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
