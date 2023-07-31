import 'package:flutter/material.dart';


// import '../../components/default_button.dart';
// import '../../components/my_outline_button.dart';
import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      " I am a dedicated Python Django Backend Developer with a passion for building scalable and efficient web applications. My expertise lies in the Django framework, where I excel in crafting seamless middleware, leveraging Celery, optimizing databases, and ensuring robust ORM implementation. I have a strong command over RESTful APIs, including design, development, documentation, authentication, and testing, which allows me to create reliable and secure endpoints. \nAdditionally, I am adept at integrating Django with front-end technologies, providing a seamless user experience. Throughout my career, I have successfully collaborated with cross-functional teams, delivering high-quality, maintainable code that exceeds client expectations. With a detail-oriented approach and a love for problem-solving, I am always eager to take on new challenges and contribute to innovative projects. Let's work together to bring your ideas to life! 🚀",
                ),
              ),
              ExperienceCard(numOfExp: "05"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I am a skilled Flutter Web and Mobile App Developer, specializing in creating engaging and responsive front-end experiences for both web and mobile platforms. With a strong command over HTML, CSS, and JavaScript, I leverage the power of Flutter to craft seamless and user-friendly interfaces that captivate users. \nOn the back-end, I am proficient in Django Rest Framework, empowering me to develop robust and secure RESTful APIs. I excel in designing, developing, and documenting APIs, ensuring seamless communication between front-end and back-end components. My expertise in authentication and testing further enhances the reliability and performance of the applications I build.\n With a passion for innovation and an eye for detail, I thrive in fast-paced environments, delivering high-quality solutions that meet project objectives. Throughout my career, I have successfully collaborated with cross-functional teams, ensuring smooth coordination and timely project delivery.🚀",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     MyOutlineButton(
          //       imageSrc: "assets/images/hand.png",
          //       text: "Hire Me!",
          //       press: () {},
          //     ),
          //     SizedBox(width: kDefaultPadding * 1.5),
          //     DefaultButton(
          //       imageSrc: "assets/images/download.png",
          //       text: "Download CV",
          //       press: () {},
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
