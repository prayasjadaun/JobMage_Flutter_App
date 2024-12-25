import 'package:flutter/material.dart';

import '../models/job_posting.dart';
import 'tag_widget.dart';

class JobCard extends StatelessWidget {
  final JobPosting job;
  final VoidCallback? onBookmarkTap;

  const JobCard({
    super.key,
    required this.job,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    job.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                IconButton(
                  icon: Icon(job.isBookmarked
                      ? Icons.bookmark
                      : Icons.bookmark_border_outlined),
                  onPressed: onBookmarkTap,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${job.company},\n${job.location}",
                  style: const TextStyle(fontSize: 15),
                ),
                const Icon(Icons.disabled_visible_sharp),
              ],
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              TagWidget(text: job.salary),
              TagWidget(
                text: job.jobType,
                isHighlighted: true,
                showIcon: true,
              ),
            ],
          ),
          const SizedBox(height: 5),
          TagWidget(
            text: job.shift,
            isHighlighted: job.jobType != 'Full-time',
            showIcon: true,
          ),
          const SizedBox(height: 10),
          if (job.hasEasyApply) ...[
            const Row(
              children: [
                Icon(Icons.share),
                SizedBox(width: 5),
                Text('Easy apply'),
              ],
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              job.timePosted,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
