import 'package:flutter/material.dart';
import '../../../routers/navigator.dart';
import '../course_routes.dart';
import '../models/course.dart';

class CourseItem extends StatelessWidget {
  CourseItem(this.courseInfo, this.index) : assert(courseInfo != null);

  final Course courseInfo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          {AppNavigator.push(CourseRoutes.datailPage, params: courseInfo)},
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              courseInfo.imageUrl,
              width: 144,
              height: 81,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Container(
                height: 81,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      courseInfo.name,
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.all(2),
                      color: Colors.grey.shade700.withOpacity(0.5),
                      child: RichText(
                        text: TextSpan(
                          text: courseInfo.displayFirstSalePrice,
                          children: [
                            TextSpan(
                              text: ' ${courseInfo.displayFirstSaleCurrency}',
                            )
                          ],
                        ),
                      ),
                    ),
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
