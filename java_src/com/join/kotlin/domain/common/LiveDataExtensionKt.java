package com.join.kotlin.domain.common;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LiveDataExtension.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\u001a%\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007\"\u00028\u0000¢\u0006\u0004\b\u0004\u0010\t¨\u0006\n"}, d2 = {"T", "Lcom/join/kotlin/domain/common/SingleLiveEvent;", "value", "", "setEvent", "(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V", "Lcom/join/kotlin/domain/common/SingleLiveEvents;", "", "values", "(Lcom/join/kotlin/domain/common/SingleLiveEvents;[Ljava/lang/Object;)V", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class LiveDataExtensionKt {
    public static final <T> void setEvent(@NotNull SingleLiveEvent<T> setEvent, T t3) {
        Intrinsics.checkNotNullParameter(setEvent, "$this$setEvent");
        setEvent.setValue(t3);
    }

    public static final <T> void setEvent(@NotNull SingleLiveEvents<T> setEvent, @NotNull T... values) {
        List<? extends T> list;
        Intrinsics.checkNotNullParameter(setEvent, "$this$setEvent");
        Intrinsics.checkNotNullParameter(values, "values");
        list = ArraysKt___ArraysKt.toList(values);
        setEvent.setValue((List) list);
    }
}
