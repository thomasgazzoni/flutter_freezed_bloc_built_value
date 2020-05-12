# flutter_freezed_bloc_built_value

Boilerplate to show how to integrate **Freezed** with **Bloc** and **Built Value**

## Introduction

In this example we put together the following libraries to manage a app state:

- [Bloc](https://github.com/felangel/bloc)
- [Freezed](https://github.com/rrousselGit/freezed)
- [Built Value](https://github.com/google/built_value.dart)

## Problem

Among the all State Management library I decided to use the Bloc pattern for a company project.

I found the Bloc pattern a bit _too verbose_ and I didn't like to use [Equitable](https://github.com/felangel/equatable) since my models were already using Built Value.

Another issue I found is the **is** operator, in my opinion, is quite dangerous, since it doesn't care of the base type you are comparing with, if you are not careful enough you may end up comparing events with states [you can view this question](https://stackoverflow.com/questions/61743618/in-dart-check-if-a-class-inherits-parent-class-with-type-checking).

Of course you can (and you should) write tests, and those will point out that there is some problem with the **mapEventToState** function, but I think is still better to have a sort of check while you write the code.

## Solution

I try to convert my Bloc Event and State using _Built Value_, to reduce a bit the code and remove Equitable dependence.
For the State is possible to use Built Value with different factories, but for Events is not possible since you can't check if a State Object is belong to a specific factory, so you still need to use normal classes and the **is** operator.

I search around for a better solutions, asking in StackOverflow I got this [answer](https://stackoverflow.com/questions/61743618/in-dart-check-if-a-class-inherits-parent-class-with-type-checking) and make this demo project to try it out.

## Implementation

Using [Freezed](https://github.com/rrousselGit/freezed) my Event and State are definitely less verbose and looks cleaner:

```dart

// Event
@freezed
abstract class CourseEvent with _$CourseEvent {
  const factory CourseEvent.fetchList() = FetchList;
  const factory CourseEvent.fetchError([String message]) = FetchError;
}

// State
@freezed
abstract class CourseState with _$CourseState {
  const factory CourseState({@Default([]) List<Course> value}) = Initial;
  const factory CourseState.loading() = Loading;
  const factory CourseState.success(BuiltList<Course> value) = Success;
  const factory CourseState.failure([String message]) = Failure;
}

```

In the bloc **mapEventToState** implementation we don't use anymore the **is** operator but we can use the Freezed **when** method and yield different states:

```dart
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
```

NOTE: I use the **maybeWhen** with **orElse** to be more flexible in this example, so if I forget to implement a new event I will just get a error. In production will be better to just use the **when** so it will be mandatory to implement all the events.

In the Widget we also use the Freezed **when** method to return the Widget base on the state.

```dart
    child: BlocConsumer<CourseBloc, CourseState>(
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
          success: (data) => ListView.builder(
            itemCount: data?.length ?? 0,
            itemBuilder: (_, index) => CourseItem(data[index], index),
          ),
          failure: (message) => Padding(
            padding: EdgeInsets.all(20),
            child: Text('Error while fetching data: $message')
        ),
    ),
```

## Thanks

@github/rrousselGit for Freezed library and to point out this possible solution
