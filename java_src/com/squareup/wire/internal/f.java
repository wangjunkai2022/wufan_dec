package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.s;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"com/squareup/wire/internal/g", "com/squareup/wire/internal/h"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class f {
    @JvmName(name = "-redactElements")
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list, @NotNull ProtoAdapter<T> protoAdapter) {
        return h.a(list, protoAdapter);
    }

    @JvmName(name = "-redactElements")
    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map, @NotNull ProtoAdapter<V> protoAdapter) {
        return h.b(map, protoAdapter);
    }

    @NotNull
    public static final String c(@NotNull String str) {
        return h.c(str);
    }

    public static final void d(@NotNull List<?> list) {
        h.d(list);
    }

    public static final void e(@NotNull Map<?, ?> map) {
        h.e(map);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(list)", imports = {}))
    @NotNull
    public static final <T> List<T> f(@NotNull String str, @Nullable List<? extends T> list) {
        return h.f(str, list);
    }

    @NotNull
    public static final <T> List<T> g(@NotNull List<? extends T> list) {
        return h.g(list);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(map)", imports = {}))
    @NotNull
    public static final <K, V> Map<K, V> h(@NotNull String str, @Nullable Map<K, ? extends V> map) {
        return h.h(str, map);
    }

    @NotNull
    public static final <K, V> Map<K, V> i(@NotNull Map<K, ? extends V> map) {
        return h.i(map);
    }

    public static final int j(@Nullable Object obj, @Nullable Object obj2) {
        return h.j(obj, obj2);
    }

    public static final int k(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3) {
        return h.k(obj, obj2, obj3);
    }

    public static final int l(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @NotNull Object... objArr) {
        return h.l(obj, obj2, obj3, obj4, objArr);
    }

    public static final boolean m(@Nullable Object obj, @Nullable Object obj2) {
        return h.m(obj, obj2);
    }

    @Nullable
    public static final <E extends s> E n(@NotNull Class<E> cls) {
        return (E) g.a(cls);
    }

    @NotNull
    public static final <T> List<T> o(@NotNull String str, @NotNull List<? extends T> list) {
        return h.o(str, list);
    }

    @NotNull
    public static final <K, V> Map<K, V> p(@NotNull String str, @NotNull Map<K, ? extends V> map) {
        return h.p(str, map);
    }

    @NotNull
    public static final <K, V> Map<K, V> q(@NotNull String str, @NotNull Map<K, ? extends V> map) {
        return h.q(str, map);
    }

    public static final <T> T r(@NotNull String str, T t3) {
        return (T) h.r(str, t3);
    }

    @NotNull
    public static final IllegalStateException s(@NotNull Object... objArr) {
        return h.s(objArr);
    }

    @NotNull
    public static final <T> List<T> t() {
        return h.t();
    }

    @NotNull
    public static final <K, V> Map<K, V> u() {
        return h.u();
    }

    public static final <T> void v(@NotNull List<T> list, @NotNull ProtoAdapter<T> protoAdapter) {
        g.b(list, protoAdapter);
    }

    public static final <T> void w(@NotNull Map<?, T> map, @NotNull ProtoAdapter<T> protoAdapter) {
        g.c(map, protoAdapter);
    }

    @NotNull
    public static final String x(@NotNull String str) {
        return h.v(str);
    }

    @NotNull
    public static final String y(@NotNull List<String> list) {
        return h.w(list);
    }
}
