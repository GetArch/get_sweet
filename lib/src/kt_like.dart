/// 参考Kotlin作用域函数
/// https://juejin.cn/post/7061809339559837704
extension KtLikeX on dynamic {
  R let<T, R>(R Function(T it) block) => block(this as T);

  T also<T>(void Function(T it) block) {
    block(this as T);
    return this;
  }

  T? takeIf<T>(bool Function(T it) predicate) =>
      predicate(this as T) ? this : null;

  T? takeUnless<T>(bool Function(T it) predicate) =>
      predicate(this as T) ? null : this;
}
