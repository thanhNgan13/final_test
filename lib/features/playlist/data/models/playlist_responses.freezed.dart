// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaylistsResponse {

 List<PlaylistModel> get items;
/// Create a copy of PlaylistsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaylistsResponseCopyWith<PlaylistsResponse> get copyWith => _$PlaylistsResponseCopyWithImpl<PlaylistsResponse>(this as PlaylistsResponse, _$identity);

  /// Serializes this PlaylistsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaylistsResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'PlaylistsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $PlaylistsResponseCopyWith<$Res>  {
  factory $PlaylistsResponseCopyWith(PlaylistsResponse value, $Res Function(PlaylistsResponse) _then) = _$PlaylistsResponseCopyWithImpl;
@useResult
$Res call({
 List<PlaylistModel> items
});




}
/// @nodoc
class _$PlaylistsResponseCopyWithImpl<$Res>
    implements $PlaylistsResponseCopyWith<$Res> {
  _$PlaylistsResponseCopyWithImpl(this._self, this._then);

  final PlaylistsResponse _self;
  final $Res Function(PlaylistsResponse) _then;

/// Create a copy of PlaylistsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PlaylistModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaylistsResponse].
extension PlaylistsResponsePatterns on PlaylistsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaylistsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaylistsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaylistsResponse value)  $default,){
final _that = this;
switch (_that) {
case _PlaylistsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaylistsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PlaylistsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlaylistModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaylistsResponse() when $default != null:
return $default(_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlaylistModel> items)  $default,) {final _that = this;
switch (_that) {
case _PlaylistsResponse():
return $default(_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlaylistModel> items)?  $default,) {final _that = this;
switch (_that) {
case _PlaylistsResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaylistsResponse implements PlaylistsResponse {
  const _PlaylistsResponse({required final  List<PlaylistModel> items}): _items = items;
  factory _PlaylistsResponse.fromJson(Map<String, dynamic> json) => _$PlaylistsResponseFromJson(json);

 final  List<PlaylistModel> _items;
@override List<PlaylistModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of PlaylistsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaylistsResponseCopyWith<_PlaylistsResponse> get copyWith => __$PlaylistsResponseCopyWithImpl<_PlaylistsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaylistsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaylistsResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'PlaylistsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$PlaylistsResponseCopyWith<$Res> implements $PlaylistsResponseCopyWith<$Res> {
  factory _$PlaylistsResponseCopyWith(_PlaylistsResponse value, $Res Function(_PlaylistsResponse) _then) = __$PlaylistsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PlaylistModel> items
});




}
/// @nodoc
class __$PlaylistsResponseCopyWithImpl<$Res>
    implements _$PlaylistsResponseCopyWith<$Res> {
  __$PlaylistsResponseCopyWithImpl(this._self, this._then);

  final _PlaylistsResponse _self;
  final $Res Function(_PlaylistsResponse) _then;

/// Create a copy of PlaylistsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_PlaylistsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PlaylistModel>,
  ));
}


}


/// @nodoc
mixin _$PlaylistSongsResponse {

 List<SongModel> get items; PaginationModel get pagination;
/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaylistSongsResponseCopyWith<PlaylistSongsResponse> get copyWith => _$PlaylistSongsResponseCopyWithImpl<PlaylistSongsResponse>(this as PlaylistSongsResponse, _$identity);

  /// Serializes this PlaylistSongsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaylistSongsResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'PlaylistSongsResponse(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PlaylistSongsResponseCopyWith<$Res>  {
  factory $PlaylistSongsResponseCopyWith(PlaylistSongsResponse value, $Res Function(PlaylistSongsResponse) _then) = _$PlaylistSongsResponseCopyWithImpl;
@useResult
$Res call({
 List<SongModel> items, PaginationModel pagination
});


$PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$PlaylistSongsResponseCopyWithImpl<$Res>
    implements $PlaylistSongsResponseCopyWith<$Res> {
  _$PlaylistSongsResponseCopyWithImpl(this._self, this._then);

  final PlaylistSongsResponse _self;
  final $Res Function(PlaylistSongsResponse) _then;

/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SongModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}
/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlaylistSongsResponse].
extension PlaylistSongsResponsePatterns on PlaylistSongsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaylistSongsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaylistSongsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaylistSongsResponse value)  $default,){
final _that = this;
switch (_that) {
case _PlaylistSongsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaylistSongsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PlaylistSongsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SongModel> items,  PaginationModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaylistSongsResponse() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SongModel> items,  PaginationModel pagination)  $default,) {final _that = this;
switch (_that) {
case _PlaylistSongsResponse():
return $default(_that.items,_that.pagination);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SongModel> items,  PaginationModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _PlaylistSongsResponse() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaylistSongsResponse implements PlaylistSongsResponse {
  const _PlaylistSongsResponse({required final  List<SongModel> items, required this.pagination}): _items = items;
  factory _PlaylistSongsResponse.fromJson(Map<String, dynamic> json) => _$PlaylistSongsResponseFromJson(json);

 final  List<SongModel> _items;
@override List<SongModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  PaginationModel pagination;

/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaylistSongsResponseCopyWith<_PlaylistSongsResponse> get copyWith => __$PlaylistSongsResponseCopyWithImpl<_PlaylistSongsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaylistSongsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaylistSongsResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'PlaylistSongsResponse(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PlaylistSongsResponseCopyWith<$Res> implements $PlaylistSongsResponseCopyWith<$Res> {
  factory _$PlaylistSongsResponseCopyWith(_PlaylistSongsResponse value, $Res Function(_PlaylistSongsResponse) _then) = __$PlaylistSongsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<SongModel> items, PaginationModel pagination
});


@override $PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$PlaylistSongsResponseCopyWithImpl<$Res>
    implements _$PlaylistSongsResponseCopyWith<$Res> {
  __$PlaylistSongsResponseCopyWithImpl(this._self, this._then);

  final _PlaylistSongsResponse _self;
  final $Res Function(_PlaylistSongsResponse) _then;

/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_PlaylistSongsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SongModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}

/// Create a copy of PlaylistSongsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$SongsResponse {

 List<SongModel> get items;
/// Create a copy of SongsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongsResponseCopyWith<SongsResponse> get copyWith => _$SongsResponseCopyWithImpl<SongsResponse>(this as SongsResponse, _$identity);

  /// Serializes this SongsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongsResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SongsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $SongsResponseCopyWith<$Res>  {
  factory $SongsResponseCopyWith(SongsResponse value, $Res Function(SongsResponse) _then) = _$SongsResponseCopyWithImpl;
@useResult
$Res call({
 List<SongModel> items
});




}
/// @nodoc
class _$SongsResponseCopyWithImpl<$Res>
    implements $SongsResponseCopyWith<$Res> {
  _$SongsResponseCopyWithImpl(this._self, this._then);

  final SongsResponse _self;
  final $Res Function(SongsResponse) _then;

/// Create a copy of SongsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SongModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SongsResponse].
extension SongsResponsePatterns on SongsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SongsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SongsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SongsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SongsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SongsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SongsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SongModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SongsResponse() when $default != null:
return $default(_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SongModel> items)  $default,) {final _that = this;
switch (_that) {
case _SongsResponse():
return $default(_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SongModel> items)?  $default,) {final _that = this;
switch (_that) {
case _SongsResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SongsResponse implements SongsResponse {
  const _SongsResponse({required final  List<SongModel> items}): _items = items;
  factory _SongsResponse.fromJson(Map<String, dynamic> json) => _$SongsResponseFromJson(json);

 final  List<SongModel> _items;
@override List<SongModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SongsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SongsResponseCopyWith<_SongsResponse> get copyWith => __$SongsResponseCopyWithImpl<_SongsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SongsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SongsResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SongsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$SongsResponseCopyWith<$Res> implements $SongsResponseCopyWith<$Res> {
  factory _$SongsResponseCopyWith(_SongsResponse value, $Res Function(_SongsResponse) _then) = __$SongsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<SongModel> items
});




}
/// @nodoc
class __$SongsResponseCopyWithImpl<$Res>
    implements _$SongsResponseCopyWith<$Res> {
  __$SongsResponseCopyWithImpl(this._self, this._then);

  final _SongsResponse _self;
  final $Res Function(_SongsResponse) _then;

/// Create a copy of SongsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_SongsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SongModel>,
  ));
}


}

// dart format on
