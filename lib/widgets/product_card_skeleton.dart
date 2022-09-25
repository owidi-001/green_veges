import 'package:flutter/material.dart';
import 'package:greens_veges/theme/app_theme.dart';
import 'package:greens_veges/widgets/skeleton.dart';

Widget productSkeletonLoader() {
  return Card(
    elevation: 0.5,
      color: AppTheme.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 2,
              child: Skeleton(
                height: 120,
                width: 120,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Skeleton(height: 16, width: 100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Skeleton(
                  height: 20,
                  width: 80,
                ),
                Skeleton(
                  height: 24,
                  width: 24,
                )
              ],
            )
          ],
        ),
      ));
}
