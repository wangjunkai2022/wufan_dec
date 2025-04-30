package com.squareup.wire;

import com.squareup.wire.ProtoAdapter;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnumAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\"\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a*\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\t\u0010\n\u001aE\u0010\u0010\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\r\u001a\u00020\f2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000eH\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\"\u0010\u0012\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, d2 = {"Lcom/squareup/wire/s;", "E", "value", "", ai.aD, "(Lcom/squareup/wire/s;)I", "Lcom/squareup/wire/n;", "writer", "", "b", "(Lcom/squareup/wire/n;Lcom/squareup/wire/s;)V", "Lcom/squareup/wire/b;", "Lcom/squareup/wire/m;", "reader", "Lkotlin/Function1;", "fromValue", "a", "(Lcom/squareup/wire/b;Lcom/squareup/wire/m;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/s;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lcom/squareup/wire/s;)Lcom/squareup/wire/s;", "wire-runtime"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class c {
    @NotNull
    public static final <E extends s> E a(@NotNull b<E> commonDecode, @NotNull m reader, @NotNull Function1<? super Integer, ? extends E> fromValue) {
        Intrinsics.checkNotNullParameter(commonDecode, "$this$commonDecode");
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(fromValue, "fromValue");
        int p3 = reader.p();
        E invoke = fromValue.invoke(Integer.valueOf(p3));
        if (invoke != null) {
            return invoke;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(p3, commonDecode.getType());
    }

    public static final <E extends s> void b(@NotNull n writer, @NotNull E value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.g(value.getValue());
    }

    public static final <E extends s> int c(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return n.f56869b.i(value.getValue());
    }

    @NotNull
    public static final <E extends s> E d(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }
}
