import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({super.key, required this.index, required this.press});

  final int index;
  final Function press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override

  Widget build(BuildContext context) {
    return InkWell(
      //onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 220,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image, width: 200, height: 400,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].title.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),

                    Text(recentWorks[widget.index].category),
                    // Text(
                    //   recentWorks[widget.index].title,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .headlineSmall!
                    //       .copyWith(height: 1.5),
                    // ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      "View Details",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


