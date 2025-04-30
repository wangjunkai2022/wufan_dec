package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.s;
import com.umeng.analytics.pro.ai;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a(\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u001a,\u0010\t\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u00002\u0010\u0010\b\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00000\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\")\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u000b*\u00020\n*\b\u0012\u0004\u0012\u00028\u00000\f8F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"T", "Ljava/util/List;", "list", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "", "b", "Ljava/util/Map;", "map", ai.aD, "Lcom/squareup/wire/s;", "E", "Ljava/lang/Class;", "a", "(Ljava/lang/Class;)Lcom/squareup/wire/s;", "identityOrNull", "wire-runtime"}, k = 5, mv = {1, 4, 0}, xs = "com/squareup/wire/internal/Internal")
/* loaded from: classes4.dex */
final /* synthetic */ class g {
    @Nullable
    public static final <E extends s> E a(@NotNull Class<E> identityOrNull) {
        E e4;
        Intrinsics.checkNotNullParameter(identityOrNull, "$this$identityOrNull");
        E[] enumConstants = identityOrNull.getEnumConstants();
        Intrinsics.checkNotNullExpressionValue(enumConstants, "enumConstants");
        int length = enumConstants.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                e4 = null;
                break;
            }
            e4 = enumConstants[i2];
            E e5 = e4;
            Objects.requireNonNull(e5, "null cannot be cast to non-null type com.squareup.wire.WireEnum");
            if (e5.getValue() == 0) {
                break;
            }
            i2++;
        }
        return e4;
    }

    public static final <T> void b(@NotNull List<T> list, @NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            list.set(i2, adapter.E(list.get(i2)));
        }
    }

    public static final <T> void c(@NotNull Map<?, T> map, @NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        for (Map.Entry<?, T> entry : map.entrySet()) {
            entry.setValue(adapter.E(entry.getValue()));
        }
    }
}
