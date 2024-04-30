import 'dart:ui';
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF144522),
        leading: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 180,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset('assets/images/backgrounbg.png', fit: BoxFit.cover),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      "Hello, Lyhuoy",
                                      style: TextStyle(fontSize: 20, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "GREEN",
                                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 13,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Text(
                                      "Your Point : 9999",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                    const SizedBox(width: 5),
                                    Image.asset("assets/images/coin.png", width: 20, height: 20),
                                  ],
                                ),
                                const SizedBox(height: 30.0),
                                const Row(
                                  children: [
                                    Text(
                                      "Earn 15.000 points for upgrade to ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      "GOLD",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.circle_notifications_outlined,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 25,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "14780/15000",
                                      style: TextStyle(
                                        color: Color(0xFF144522),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF144522),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/medal.png", width: 20, height: 20),
                        const SizedBox(width: 10),
                        const Text(
                          "ALL",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF144522), width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/special-offer.png", width: 20, height: 20),
                          const SizedBox(width: 10),
                          const Text(
                            "Special promotion",
                            style: TextStyle(
                              color: Color(0xFF144522),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  _RewardItem(
                    image: "assets/images/buy1free1.jpeg",
                    title: "Free Coffee",
                    description: "Buy 10 get 1 free \nGet 1 point for 1 coffee",
                    point: "100.000",
                  ),
                  SizedBox(height: 15),
                  _RewardItem(
                    image: "assets/images/oat.jpeg",
                    title: "Discount 50%",
                    description: "Buy 2 get 1 free \nGet 1 point for 1 coffee",
                    point: "50.000",
                  ),
                  SizedBox(height: 15),
                  _RewardItem(
                    image: "assets/images/peach.jpeg",
                    title: "Free Coffee",
                    description: "Buy 10 get 1 free \nGet 1 point for 1 coffee",
                    point: "100.000",
                  ),
                  SizedBox(height: 15),
                  _RewardItem(
                    image: "assets/images/mix-matcha.jpeg",
                    title: "Mix Matcha",
                    description: "Buy 10 get 1 free \nGet 1 point for 1 coffee",
                    point: "1000.000",
                  ),
                  SizedBox(height: 15),
                  _RewardItem(
                    image: "assets/images/stra.jpeg",
                    title: "Free Coffee",
                    description: "Buy 10 get 1 free \nGet 1 point for 1 coffee",
                    point: "100.000",
                  ),
                  SizedBox(height: 15),
                  _RewardItem(
                    image: "assets/images/greentea.jpeg",
                    title: "Free Coffee",
                    description: "Buy 10 get 1 free \nGet 1 point for 1 coffee",
                    point: "100.000",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _RewardItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String point;
  const _RewardItem({
    required this.image,
    required this.title,
    required this.description,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            height: 135,
            width: MediaQuery.of(context).size.width * 0.43,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFF144522).withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      point,
                      style: const TextStyle(
                        color: Color(0xFF144522),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Image(
                      image: AssetImage("assets/images/coin.png"),
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
