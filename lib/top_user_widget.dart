import 'package:flutter/material.dart';
import 'package:food_recipe/resources/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/resources/app_icons.dart';
import 'package:food_recipe/widgets/rounded_button_widget.dart';

class TopUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // padding: EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Joana',
                      style: TextStyle(fontSize: 24, color: AppColors.aztecColor),
                    ),
                    Text(
                      'What do you want to cook today?',
                      style: TextStyle(fontSize: 13, color: AppColors.gunsmokeaColor),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: Container(
                    width: 44,
                    height: 44,
                    child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                    ),
                    /*decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(44),
                    ),*/
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            height: 177,
            child: Stack(
              children: [
                Align(
                  child: Container(
                    height: 85,
                    color: AppColors.springWoodColor,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24),
                  height: 177,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      border: Border.all(color: AppColors.galleryColor)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Recipes recomendation',
                                  style: TextStyle(fontSize: 16, color: AppColors.aztecColor),
                                ),
                                Text(
                                  'Get your personalized recipes recommendation in a 4 steps',
                                  style: TextStyle(fontSize: 12, color: AppColors.gunsmokeaColor),
                                ),
                              ],
                            ),
                          ),
                          //Icon
                          AppIcons.foodIcon,
                        ],
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Expanded(
                            child: RoundedButtonWidget(
                              title: 'Get started',
                              onTap: () {
                                print('onTap call');
                              },
                            ),
                          ),
                          Container(
                            width: 12,
                          ),
                          Expanded(
                            child: RoundedButtonWidget(
                              title: 'Skip',
                              onTap: () {
                                print('onTap call');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
