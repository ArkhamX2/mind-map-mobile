import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;
  const Failure({required this.message});
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure{
  const ServerFailure({required super.message});
}

class CacheFailure extends Failure{
  const CacheFailure({required super.message});
}

class AuthFailure extends Failure{
  const AuthFailure({required super.message});
}

class LoadDepartmentsFailure extends Failure{
  const LoadDepartmentsFailure({required super.message});
}

class LoadCoursesFailure extends Failure{
  const LoadCoursesFailure({required super.message});
}

class LoadGroupsFailure extends Failure{
  const LoadGroupsFailure({required super.message});
}

class LoadGroupSelectorFailure extends Failure{
  const LoadGroupSelectorFailure({required super.message});
}


class LoadWeekTypeFailure extends Failure{
  const LoadWeekTypeFailure({required super.message});
}

class LoadScheduleFailure extends Failure{
  const LoadScheduleFailure({required super.message});
}

class LoadDisciplineFailure extends Failure{
  const LoadDisciplineFailure({required super.message});
}
