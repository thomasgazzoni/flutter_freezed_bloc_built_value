import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widgets/layout/layout.dart';
import '../bloc/course.dart';
import '../widgets/course_item.dart';

class CourseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _courseBloc = BlocProvider.of<CourseBloc>(context);

    return BasePageScaffold(
      title: 'Courses list',
      hideLeading: true,
      child: BlocConsumer<CourseBloc, CourseState>(
        listenWhen: (previous, current) {
          // return true/false to determine whether or not to invoke listener with state
          return true;
        },
        listener: (context, state) {
          // do stuff here based on CourseBloc's state
        },
        buildWhen: (previous, current) {
          // return true/false to determine whether or not to rebuild the widget with state
          return true;
        },
        builder: (context, state) => state.when(
          (value) => Center(
            child: RaisedButton(
              child: Text('Load courses'),
              onPressed: () {
                _courseBloc.add(CourseEvent.fetchList());
              },
            ),
          ),
          loading: () => Center(child: CircularProgressIndicator()),
          success: (data) => RefreshIndicator(
            onRefresh: () async {
              // TODO: optimize by passing a Compliter to the event and call the completed method in the mapEventToState
              _courseBloc.add(CourseEvent.fetchList());
              await Future.delayed(Duration(seconds: 2));
            },
            child: ListView.builder(
              itemCount: data?.length ?? 0,
              itemBuilder: (_, index) => CourseItem(data[index], index),
            ),
          ),
          failure: (message) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                child: Text('Retry load courses'),
                onPressed: () {
                  _courseBloc.add(CourseEvent.fetchList());
                },
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Error while fetching data: $message'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
