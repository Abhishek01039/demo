import 'package:equatable/equatable.dart';

/// General UseCase
abstract class UseCase<Type, Params> {
  /// Trigger UseCase from bloc
  Future<Type> call(Params params);
}

/// Pass this class when we don't want to pass any data to [UseCase.call] method
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
