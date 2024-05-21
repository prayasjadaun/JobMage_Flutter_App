import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Lottie.asset('assets/animations/home job.json'),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(child: Lottie.asset('assets/animations/swip.json')),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: const Text(
                  'If you want to know! What JobMage provide for our users, Please swipe Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    child: Icon(
                  Icons.shopping_bag,
                  size: 30,
                )),
                SizedBox(
                    child: Icon(
                  Icons.menu_book_rounded,
                  size: 30,
                )),
                SizedBox(
                    child: Icon(
                  Icons.assessment,
                  size: 30,
                )),
                SizedBox(
                    child: Icon(
                  Icons.person,
                  size: 30,
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Center(
                child: Text(
                  'Get closer to your Dream Job !',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'A comprehensive platform for CSE freshers in the industry.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Find job opportunities, enhance your skills, connect with professionals, self-assessment.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                  )),
                ),
                Lottie.asset('assets/animations/Resource.json'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Center(
                child: Text(
                  'What services we provide ?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Jobs and Internships',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Discover a one-stop destination for all your job and internship needs! Say goodbye to endless searches across various platforms. We provide a centralized hub for relevant and up-to-date information, ensuring you never miss out on the perfect opportunity.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset('assets/images/jobsinter.webp'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Center(
                child: Text(
                  'Resources',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Gain access to a curated collection of online paid courses, now accessible for free on the internet. Elevate your skills and knowledge with these valuable resources, without any cost to you.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Lottie.asset('assets/animations/mind.json'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Center(
                child: Text(
                  'Find Career advice and Roadmap by our Chatbot',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "If you're feeling unsure and unsure of where to begin, our chatbot is here to help. It gathers information about your interests and provides you with a personalized roadmap to get started.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Lottie.asset('assets/animations/chatb.json'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'We are here to help you..',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset('assets/images/contact.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
