class JobPosting {
  final String title;
  final String company;
  final String location;
  final String salary;
  final String jobType;
  final String shift;
  final bool isBookmarked;
  final String timePosted;
  final bool hasEasyApply;

  JobPosting({
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.jobType,
    required this.shift,
    this.isBookmarked = false,
    required this.timePosted,
    this.hasEasyApply = false,
  });
}
