import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/content_section.dart';
import '../components/get_started_button.dart';
import '../components/navigation_bar.dart';
import '../components/section_title.dart';

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
              const ContentSection(
                title: '',
                description:
                    'If you want to know! What JobMage provide for our users, Please swipe Up',
              ),
            ],
          ),
          const CustomNavigationBar(),
          const SizedBox(height: 10),
          const SectionTitle(title: 'Get closer to your Dream Job !'),
          ContentSection(
            title: '',
            description:
                'A comprehensive platform for CSE freshers in the industry.\n\nFind job opportunities, enhance your skills, connect with professionals, self-assessment.',
            media: Column(
              children: [
                GetStartedButton(onPressed: () {}),
                Lottie.asset('assets/animations/Resource.json'),
              ],
            ),
          ),
          const SectionTitle(title: 'What services we provide ?'),
          ContentSection(
            title: 'Jobs and Internships',
            description:
                'Discover a one-stop destination for all your job and internship needs! Say goodbye to endless searches across various platforms. We provide a centralized hub for relevant and up-to-date information, ensuring you never miss out on the perfect opportunity.',
            media: Image.asset('assets/images/jobsinter.webp'),
          ),
          const SectionTitle(title: 'Resources'),
          ContentSection(
            title: '',
            description:
                'Gain access to a curated collection of online paid courses, now accessible for free on the internet. Elevate your skills and knowledge with these valuable resources, without any cost to you.',
            media: Lottie.asset('assets/animations/mind.json'),
          ),
          const SectionTitle(
              title: 'Find Career advice and Roadmap by our Chatbot'),
          ContentSection(
            title: '',
            description:
                "If you're feeling unsure and unsure of where to begin, our chatbot is here to help. It gathers information about your interests and provides you with a personalized roadmap to get started.",
            media: Lottie.asset('assets/animations/chatb.json'),
          ),
          const SectionTitle(title: 'Contact Us'),
          const ContentSection(
            title: '',
            description: 'We are here to help you..',
            media: Image(image: AssetImage('assets/images/contact.jpg')),
          ),
        ],
      ),
    );
  }
}
