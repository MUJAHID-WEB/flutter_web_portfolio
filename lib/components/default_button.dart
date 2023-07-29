import 'package:flutter/material.dart';

import '../constants.dart';



class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.imageSrc, required this.text, required press});

  final String imageSrc, text;
  //void Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // padding: EdgeInsets.symmetric(
      //   vertical: kDefaultPadding,
      //   horizontal: kDefaultPadding * 2.5,
      // ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      // color: Color(0xFFE8F0F9),
      //onPressed: press,

      onPressed: () {  },
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}


// TextButton(
//       padding: EdgeInsets.symmetric(
//         vertical: kDefaultPadding,
//         horizontal: kDefaultPadding * 2.5,
//       ),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//       color: Color(0xFFE8F0F9),
//       onPressed: press,
//       child: Row(
//         children: [
//           Image.asset(imageSrc, height: 40),
//           SizedBox(width: kDefaultPadding),
//           Text(text),
//         ],
//       ),
//     );