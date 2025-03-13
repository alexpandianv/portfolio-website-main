import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        const url =
            'https://drive.google.com/file/d/1G7O7s1Q40oLA666FdW1vsBVW5Kn_4e_n/view?usp=sharing';
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Download CV",
              style: TextStyles.style16regular,
            ),
            const SizedBox.square(
              dimension: 12,
            ),
            const FaIcon(
              FontAwesomeIcons.download,
              color: white,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
