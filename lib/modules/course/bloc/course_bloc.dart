import 'package:bloc/bloc.dart';
import '../services/course_repository.dart';
import 'course_state.dart';
import 'course_event.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final CourseRepository _courseRepository;

  CourseBloc(this._courseRepository) : super();

  @override
  CourseState get initialState => CourseState();

  @override
  Stream<Transition<CourseEvent, CourseState>> transformEvents(
    events,
    transitionFn,
  ) {
    return super.transformEvents(
      events,
      transitionFn,
    );
  }

  @override
  Stream<CourseState> mapEventToState(event) {
    return event.maybeWhen(fetchList: () async* {
      try {
        yield CourseState.loading();
        final courses = await _courseRepository.getDefaultList();
        yield CourseState.success(courses);
      } catch (error) {
        yield CourseState.failure(error.toString());
      }
    }, orElse: () async* {
      yield CourseState.failure('Course Event not Implemented');
    });
  }
}
