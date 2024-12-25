import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/job_card.dart';
import '../models/job_posting.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  final List<JobPosting> jobs = [
    JobPosting(
      title: 'Android Developer Intern',
      company: 'Dicor Infosystems Pvt Ltd',
      location: 'Delhi, Delhi',
      salary: '₹15,000 a month',
      jobType: 'Internship',
      shift: 'Morning shift',
      timePosted: 'Today',
    ),
    JobPosting(
      title: 'Required Flutter developer',
      company: 'Uniconverge Technologies',
      location: 'Noida Uttar Pradesh',
      salary: '₹5,000 - ₹6,000 a month',
      jobType: 'Internship',
      shift: 'Day shift',
      timePosted: 'Active 2 days ago',
      hasEasyApply: true,
    ),
    JobPosting(
      title: 'E-Commerce and Web Design IT Specialist',
      company: 'Chasym Pvt Ltd',
      location: 'Gurugram, Haryana',
      salary: '₹35,000 - ₹45,000 a month',
      jobType: 'Full-time',
      shift: 'Morning shift',
      timePosted: 'Just Now',
      isBookmarked: true,
      hasEasyApply: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Lottie.asset('assets/animations/jobb.json'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
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
          const SizedBox(height: 10),
          ...jobs.map((job) => JobCard(
                job: job,
                onBookmarkTap: () {
                  // Handle bookmark tap
                },
              )),
        ],
      ),
    );
  }
}
