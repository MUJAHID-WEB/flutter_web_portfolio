import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Feedback.dart';




class FeedbackCard extends StatefulWidget {
  const FeedbackCard({super.key, required this.index});

  final int index;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {

  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
          
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, 0),
              child: AnimatedContainer(
                duration: duration,
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  //border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            // Text(
            //   feedbacks[widget.index].review,
            //   style: TextStyle(
            //     color: kTextColor,
            //     fontSize: 18,
            //     fontWeight: FontWeight.w300,
            //     fontStyle: FontStyle.italic,
            //     height: 1.5,
            //   ),
            // ),
            // SizedBox(height: kDefaultPadding * 2),
            // Text(
            //   "Ronald Thompson",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // )
          ],
        ),
      ),
    );
  }
}