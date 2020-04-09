import 'package:caravansary/data/spices/model/spice.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class SpicesState {
  const SpicesState();

  T when<T>({
    @required T Function(SpicesLoading) spicesLoading,
    @required T Function(SpicesSuccess) spicesSuccess,
  }) {
    if (this is SpicesLoading) {
      return spicesLoading(this as SpicesLoading);
    }
    if (this is SpicesSuccess) {
      return spicesSuccess(this as SpicesSuccess);
    }
    throw Exception('Unknown state: $this');
  }
}

class SpicesLoading extends SpicesState {
  const SpicesLoading();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SpicesLoading && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

class SpicesSuccess extends SpicesState {
  final List<Spice> spices;

  const SpicesSuccess(this.spices);

  @override
  String toString() {
    return 'SpicesSuccess{spices: $spices}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpicesSuccess && runtimeType == other.runtimeType && listEquals(spices, other.spices);

  @override
  int get hashCode => spices.hashCode;
}
