class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({required this.id, required this.image, required this.category, required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Luminopia - Eye Care Hospital Landing Page",
    category: "Tech Stack: Django, Django Rest Framework, Python, JavaScript, Tailwind CSS, and Slick Slider.",
    image: "assets/images/work1.png",
  ),
  RecentWork(
    id: 2,
    title: "Withjoy - Website Replication",
    category: "Tech Stack: Django, Django Rest Framework, Python",
    image: "assets/images/work2.png",
  ),
  RecentWork(
    id: 3,
    title: "Lize Transport LTD - Official Web Application",
    category: "Tech Stack: Django, Django Rest Framework, Python, TypeScript, JavaScript, Tailwind CSS, Twilio, Sendgrid, GraphQL, and ChartJs.",
    image: "assets/images/work3.png",
  ),
  RecentWork(
    id: 4,
    title: "Erzy - Cross Promotion Platform on Telegram",
    category: "Tech Stack: Django, Django Rest Framework, Python, and REST API.",
    image: "assets/images/work4.png",
  ),
  RecentWork(
    id: 5,
    title: "Educamy - Learning Management Software",
    category: "Tech Stack: Django, HTML, CSS, Bootstrap, Razorpay.",
    image: "assets/images/work5.png",
  ),
  RecentWork(
    id: 6,
    title: "Uptechunt - Freelance Marketplace",
    category: "Tech Stack: Django Rest Framework, React.js, Typescript, JavaScript, Material UI, Stripe, Twilio, Firebase, GraphQL, Redux.",
    image: "assets/images/work6.png",
  ),
];
