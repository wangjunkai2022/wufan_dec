package com.squareup.wire.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ai;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: -Platform.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b\u001a1\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006H\u0086\b\u001a\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000b*\n\u0010\u000f\"\u00020\u000e2\u00020\u000e*\n\u0010\u0011\"\u00020\u00102\u00020\u0010*\n\u0010\u0013\"\u00020\u00122\u00020\u0012*\n\u0010\u0015\"\u00020\u00142\u00020\u0014¨\u0006\u0016"}, d2 = {"T", "", "", ai.aD, "K", "V", "", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", TypedValues.Custom.S_STRING, "", "upperCamel", "a", "Ljava/io/ObjectStreamException;", "ObjectStreamException", "Ljava/net/ProtocolException;", "ProtocolException", "Ljava/io/Serializable;", "Serializable", "Lkotlin/jvm/Throws;", "Throws", "wire-runtime"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class o {
    @NotNull
    public static final String a(@NotNull String string, boolean z3) {
        Intrinsics.checkNotNullParameter(string, "string");
        StringBuilder sb = new StringBuilder(string.length());
        int i2 = 0;
        while (i2 < string.length()) {
            int codePointAt = string.codePointAt(i2);
            i2 += Character.charCount(codePointAt);
            if (codePointAt == 95) {
                z3 = true;
            } else {
                if (z3 && 97 <= codePointAt && 122 >= codePointAt) {
                    codePointAt -= 32;
                }
                sb.appendCodePoint(codePointAt);
                z3 = false;
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static /* synthetic */ String b(String str, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return a(str, z3);
    }

    @NotNull
    public static final <T> List<T> c(@NotNull List<T> toUnmodifiableList) {
        Intrinsics.checkNotNullParameter(toUnmodifiableList, "$this$toUnmodifiableList");
        List<T> unmodifiableList = Collections.unmodifiableList(toUnmodifiableList);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiableList(this)");
        return unmodifiableList;
    }

    @NotNull
    public static final <K, V> Map<K, V> d(@NotNull Map<K, V> toUnmodifiableMap) {
        Intrinsics.checkNotNullParameter(toUnmodifiableMap, "$this$toUnmodifiableMap");
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(toUnmodifiableMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(this)");
        return unmodifiableMap;
    }
}
