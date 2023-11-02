import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              // Navigator.pop(context);
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(220),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.36),
                ),
                Text("Let’s find \nyour top doctor!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.18)),
                Text("Doctor’s Inn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.21)),
              ],
            ),
          ),
          backgroundColor: const Color(0xffB28CFF),
          actions: const [
            Padding(
                padding: EdgeInsets.all(10), // Padding ko zero set karein
                child: Stack(
                  children: [
                    CircleAvatar(
                      child: Image(
                          image: AssetImage("assets/images/loginregister.png")),
                    )
                    // const CircleAvatar(child: Text("3"),)
                  ],
                )),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffbec5db), width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Image(
                                image: AssetImage("assets/images/all.png"))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "All",
                        style: TextStyle(
                            color: Color(0xff7D8BB7),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffbec5db), width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                    "assets/images/Cardiology.png"))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Cardiology",
                        style: TextStyle(
                          color: Color(0xff7D8BB7),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffbec5db),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Image(
                                width: 30,
                                height: 30,
                                image:
                                    AssetImage("assets/images/Medicine.png"))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Medicine",
                        style: TextStyle(
                          color: Color(0xff7D8BB7),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffbec5db), width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Image(
                            width: 30,
                            height: 30,
                            image: AssetImage("assets/images/General.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "General",
                        style: TextStyle(
                          color: Color(0xff7D8BB7),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              // Column(
              //   children: [
              //     Container(
              //       child: const Row(
              //         children: [
              //           Column(
              //             children: [
              //               Image(
              //                   image: AssetImage(
              //                       "assets/images/loginregister.png")),
              //             ],
              //           )
              //         ],
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ));
  }
}
