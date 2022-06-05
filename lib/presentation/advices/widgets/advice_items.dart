import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/advices/entities/advice_dto/advice_dto.dart';
import 'package:flutter/material.dart';

class AdviceItem extends StatelessWidget {
  const AdviceItem({
    required this.adviceItem,
    Key? key,
  }) : super(key: key);
  final AdviceDTO adviceItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: getDecoration(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: Image.network(
                    adviceItem.imgUrl,
                    width: 100.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        adviceItem.title,
                        style: LightTextStyles.poppinsS20W400(
                          color: LightColors.text.withOpacity(0.75),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                adviceItem.content,
                style: LightTextStyles.poppinsS14W400(
                  color: LightColors.text.withOpacity(0.75),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration getDecoration() {
    return BoxDecoration(
      color: LightColors.mainItemsColor,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: LightColors.shadowColor,
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ],
    );
  }
}
