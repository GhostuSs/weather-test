part of 'splash_cubit.dart';

class SplashState extends Equatable {
  SplashState({this.geoInit = false});

  final bool? geoInit;

  SplashState copyWith({bool? geoInitialized}) {
    return SplashState(geoInit: geoInitialized ?? this.geoInit);
  }

  @override
  List<Object?> get props => [geoInit];
}
