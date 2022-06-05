// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdviceDTO _$AdviceDTOFromJson(Map<String, dynamic> json) {
  return _AdviceDTO.fromJson(json);
}

/// @nodoc
class _$AdviceDTOTearOff {
  const _$AdviceDTOTearOff();

  _AdviceDTO call(
      {@JsonKey(name: 'img_url') required String imgUrl,
      @JsonKey(name: 'adviceId') required String adviceId,
      @JsonKey(name: 'content') required String content,
      @JsonKey(name: 'title') required String title}) {
    return _AdviceDTO(
      imgUrl: imgUrl,
      adviceId: adviceId,
      content: content,
      title: title,
    );
  }

  AdviceDTO fromJson(Map<String, Object?> json) {
    return AdviceDTO.fromJson(json);
  }
}

/// @nodoc
const $AdviceDTO = _$AdviceDTOTearOff();

/// @nodoc
mixin _$AdviceDTO {
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'adviceId')
  String get adviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdviceDTOCopyWith<AdviceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdviceDTOCopyWith<$Res> {
  factory $AdviceDTOCopyWith(AdviceDTO value, $Res Function(AdviceDTO) then) =
      _$AdviceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'adviceId') String adviceId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class _$AdviceDTOCopyWithImpl<$Res> implements $AdviceDTOCopyWith<$Res> {
  _$AdviceDTOCopyWithImpl(this._value, this._then);

  final AdviceDTO _value;
  // ignore: unused_field
  final $Res Function(AdviceDTO) _then;

  @override
  $Res call({
    Object? imgUrl = freezed,
    Object? adviceId = freezed,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adviceId: adviceId == freezed
          ? _value.adviceId
          : adviceId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdviceDTOCopyWith<$Res> implements $AdviceDTOCopyWith<$Res> {
  factory _$AdviceDTOCopyWith(
          _AdviceDTO value, $Res Function(_AdviceDTO) then) =
      __$AdviceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'adviceId') String adviceId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class __$AdviceDTOCopyWithImpl<$Res> extends _$AdviceDTOCopyWithImpl<$Res>
    implements _$AdviceDTOCopyWith<$Res> {
  __$AdviceDTOCopyWithImpl(_AdviceDTO _value, $Res Function(_AdviceDTO) _then)
      : super(_value, (v) => _then(v as _AdviceDTO));

  @override
  _AdviceDTO get _value => super._value as _AdviceDTO;

  @override
  $Res call({
    Object? imgUrl = freezed,
    Object? adviceId = freezed,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_AdviceDTO(
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adviceId: adviceId == freezed
          ? _value.adviceId
          : adviceId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_AdviceDTO extends _AdviceDTO {
  const _$_AdviceDTO(
      {@JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'adviceId') required this.adviceId,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'title') required this.title})
      : super._();

  factory _$_AdviceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AdviceDTOFromJson(json);

  @override
  @JsonKey(name: 'img_url')
  final String imgUrl;
  @override
  @JsonKey(name: 'adviceId')
  final String adviceId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  String toString() {
    return 'AdviceDTO(imgUrl: $imgUrl, adviceId: $adviceId, content: $content, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdviceDTO &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality().equals(other.adviceId, adviceId) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(adviceId),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$AdviceDTOCopyWith<_AdviceDTO> get copyWith =>
      __$AdviceDTOCopyWithImpl<_AdviceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdviceDTOToJson(this);
  }
}

abstract class _AdviceDTO extends AdviceDTO {
  const factory _AdviceDTO(
      {@JsonKey(name: 'img_url') required String imgUrl,
      @JsonKey(name: 'adviceId') required String adviceId,
      @JsonKey(name: 'content') required String content,
      @JsonKey(name: 'title') required String title}) = _$_AdviceDTO;
  const _AdviceDTO._() : super._();

  factory _AdviceDTO.fromJson(Map<String, dynamic> json) =
      _$_AdviceDTO.fromJson;

  @override
  @JsonKey(name: 'img_url')
  String get imgUrl;
  @override
  @JsonKey(name: 'adviceId')
  String get adviceId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(ignore: true)
  _$AdviceDTOCopyWith<_AdviceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
