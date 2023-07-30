class OnBoardingClass {
  String? image;
  String? title;
  String? description;
  String? buttonTitle;
  OnBoardingClass({this.description, this.image, this.title, this.buttonTitle});
}

List<OnBoardingClass> content = [
  OnBoardingClass(
    description:
        "Explore over 25,924 available job roles and upgrade your operator now",
    title: "Find a Job, and Start building your career from now on",
    image: "assets/images/Group_1.png",
    buttonTitle: "next",
  ),
  OnBoardingClass(
    description:
        "Immediately join us and start applying for the job you are interested in.",
    title: "Hundreds of jobs are waiting for you to join together",
    image: "assets/images/Background.png",
    buttonTitle: "next",
  ),
  OnBoardingClass(
    description:
        "The better the skills you have, the greater the good job opportunities for you.",
    title: "Get the best choice for the job you've always dreamed of",
    image: "assets/images/Background_2.png",
    buttonTitle: "Get Started",
  ),
];
