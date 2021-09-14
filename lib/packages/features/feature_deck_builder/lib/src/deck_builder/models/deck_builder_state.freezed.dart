// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'deck_builder_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeckBuilderStateTearOff {
  const _$DeckBuilderStateTearOff();

  Data call(Iterable<YugiohCard> speedDuelCards, {required bool isPreBuilt}) {
    return Data(
      speedDuelCards,
      isPreBuilt: isPreBuilt,
    );
  }

  Loading loading() {
    return const Loading();
  }

  NoData noData() {
    return const NoData();
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $DeckBuilderState = _$DeckBuilderStateTearOff();

/// @nodoc
mixin _$DeckBuilderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)
        $default, {
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)?
        $default, {
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(NoData value) noData,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(NoData value)? noData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckBuilderStateCopyWith<$Res> {
  factory $DeckBuilderStateCopyWith(
          DeckBuilderState value, $Res Function(DeckBuilderState) then) =
      _$DeckBuilderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeckBuilderStateCopyWithImpl<$Res>
    implements $DeckBuilderStateCopyWith<$Res> {
  _$DeckBuilderStateCopyWithImpl(this._value, this._then);

  final DeckBuilderState _value;
  // ignore: unused_field
  final $Res Function(DeckBuilderState) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({Iterable<YugiohCard> speedDuelCards, bool isPreBuilt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$DeckBuilderStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? speedDuelCards = freezed,
    Object? isPreBuilt = freezed,
  }) {
    return _then(Data(
      speedDuelCards == freezed
          ? _value.speedDuelCards
          : speedDuelCards // ignore: cast_nullable_to_non_nullable
              as Iterable<YugiohCard>,
      isPreBuilt: isPreBuilt == freezed
          ? _value.isPreBuilt
          : isPreBuilt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.speedDuelCards, {required this.isPreBuilt});

  @override
  final Iterable<YugiohCard> speedDuelCards;
  @override
  final bool isPreBuilt;

  @override
  String toString() {
    return 'DeckBuilderState(speedDuelCards: $speedDuelCards, isPreBuilt: $isPreBuilt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.speedDuelCards, speedDuelCards) ||
                const DeepCollectionEquality()
                    .equals(other.speedDuelCards, speedDuelCards)) &&
            (identical(other.isPreBuilt, isPreBuilt) ||
                const DeepCollectionEquality()
                    .equals(other.isPreBuilt, isPreBuilt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speedDuelCards) ^
      const DeepCollectionEquality().hash(isPreBuilt);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)
        $default, {
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() error,
  }) {
    return $default(speedDuelCards, isPreBuilt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)?
        $default, {
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(speedDuelCards, isPreBuilt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(NoData value) noData,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(NoData value)? noData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements DeckBuilderState {
  const factory Data(Iterable<YugiohCard> speedDuelCards,
      {required bool isPreBuilt}) = _$Data;

  Iterable<YugiohCard> get speedDuelCards => throw _privateConstructorUsedError;
  bool get isPreBuilt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$DeckBuilderStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'DeckBuilderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)
        $default, {
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)?
        $default, {
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(NoData value) noData,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(NoData value)? noData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DeckBuilderState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $NoDataCopyWith<$Res> {
  factory $NoDataCopyWith(NoData value, $Res Function(NoData) then) =
      _$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoDataCopyWithImpl<$Res> extends _$DeckBuilderStateCopyWithImpl<$Res>
    implements $NoDataCopyWith<$Res> {
  _$NoDataCopyWithImpl(NoData _value, $Res Function(NoData) _then)
      : super(_value, (v) => _then(v as NoData));

  @override
  NoData get _value => super._value as NoData;
}

/// @nodoc

class _$NoData implements NoData {
  const _$NoData();

  @override
  String toString() {
    return 'DeckBuilderState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)
        $default, {
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() error,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)?
        $default, {
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(NoData value) noData,
    required TResult Function(Error value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(NoData value)? noData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements DeckBuilderState {
  const factory NoData() = _$NoData;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$DeckBuilderStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'DeckBuilderState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)
        $default, {
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Iterable<YugiohCard> speedDuelCards, bool isPreBuilt)?
        $default, {
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(NoData value) noData,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(NoData value)? noData,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DeckBuilderState {
  const factory Error() = _$Error;
}
