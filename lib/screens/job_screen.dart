import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
              width: double.infinity,
              height: 150,
              child: Lottie.asset('assets/animations/jobb.json')),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              'Job feed',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Jobs based on your activity on Jobmage',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Android Developer Intern',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dicor Infosystems Pvt Ltd,\nDelhi, Delhi",
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.disabled_visible_sharp),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300]),
                      child: const Text('₹15,000 a month'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[200]),
                      child: Row(
                        children: [
                          const Text('Internship '),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[200]),
                      child: Row(
                        children: [
                          const Text('Morning shift '),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Required Flutter developer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Uniconverge Technologies,\nNoida Uttar Pradesh",
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.disabled_visible_sharp),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300]),
                      child: const Text('₹5,000 - ₹ 6,000 a month'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[200]),
                      child: Row(
                        children: [
                          const Text('Internship '),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[200]),
                      child: Row(
                        children: [
                          const Text('Day shift '),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Easy apply'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Active 2 days ago',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'E-Commerce and Web Design IT Specialist',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Icon(Icons.bookmark),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chasym Pvt Ltd\nGurugram, Haryana",
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.disabled_visible_sharp),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300]),
                      child: const Text('₹35,000 - ₹ 45,000 a month'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[200]),
                      child: Row(
                        children: [
                          const Text('Full-time '),
                          Icon(
                            Icons.favorite,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300]),
                      child: Row(
                        children: [
                          const Text('Morning shift '),
                          Icon(
                            Icons.favorite,
                            color: Colors.grey[900],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Easy apply'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Just Now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
