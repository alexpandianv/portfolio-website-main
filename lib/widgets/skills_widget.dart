import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillWidget extends StatefulWidget {
  final String title;
  final String image;
  final double percentage;

  const SkillWidget({
    super.key,
    required this.title,
    required this.image,
    required this.percentage,
  });

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  bool _isHovered = false;
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return width() < 950
        ? VisibilityDetector(
            key: Key(widget.title),
            onVisibilityChanged: (info) {
              if (info.visibleFraction > 0.2 && !_isVisible) {
                setState(() => _isVisible = true);
              } else if (info.visibleFraction == 0 && _isVisible) {
                setState(() => _isVisible = false);
              }
            },
            child: Column(
              children: [
                AnimatedContainer(
                  width: width() < 600 ? width() * 0.5 : width() * 0.3,
                  height: width() < 600 ? width() * 0.5 : width() * 0.3,
                  duration: const Duration(seconds: 3),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    color: _isVisible ? donJuan.withAlpha(22) : revolver,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: _isVisible ? white : revolver,
                      width: 1.2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            _isVisible ? Colors.transparent :donJuan,
                            BlendMode.srcATop,
                          ),
                          child: AnimatedContainer(
                            width: _isVisible ? 120 : 100,
                            height: _isVisible ? 120 : 100,
                            duration: const Duration(milliseconds: 300),
                            child: Image.asset(
                              widget.image,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "${(widget.percentage * 100).toInt()}%",
                        style: TextStyles.style16extrabold.copyWith(
<<<<<<< HEAD
                          color: _isVisible ?  Colors.white : Colors.white,
=======
                          color: _isVisible ? studio : Colors.white,
>>>>>>> 9a7d205ec0ffb019e926eafb15402fdd2726f62c
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpaceSmall(),
                Text(
                  widget.title,
                  style: TextStyles.style24extrabold.copyWith(
                    color: white,
                  ),
                ),
              ],
            ),
          )
        : MouseRegion(
            onEnter: (_) => setState(() => _isHovered = true),
            onExit: (_) => setState(() => _isHovered = false),
            child: Column(
              children: [
                AnimatedContainer(
                  width: width() * 0.1,
                  height: width() * 0.15,
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    color: _isHovered ? white : revolver,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: _isHovered ? white : revolver,
                      width: 1.2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            _isHovered ? Colors.transparent : Colors.grey,
                            BlendMode.srcATop,
                          ),
                          child: AnimatedContainer(
                            width: _isHovered ? 120 : 100,
                            height: _isHovered ? 120 : 100,
                            duration: const Duration(milliseconds: 300),
                            child: Image.asset(
                              widget.image,
                            ),
                          ),
                        ),
                      ),
                      verticalSpaceMedium(),
                      Text(
                        "${(widget.percentage * 100).toInt()}%",
                        style: TextStyles.style16extrabold.copyWith(
<<<<<<< HEAD
                          color: _isHovered ? valhalla :white,
=======
                          color: _isHovered ? studio :white,
>>>>>>> 9a7d205ec0ffb019e926eafb15402fdd2726f62c
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpaceSmall(),
                Text(
                  widget.title,
                  style: TextStyles.style24extrabold.copyWith(
                    color: white,
                  ),
                ),
              ],
            ),
          );
  }
}
