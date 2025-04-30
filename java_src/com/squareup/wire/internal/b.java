package com.squareup.wire.internal;

import com.squareup.wire.WireEnumConstant;
import com.squareup.wire.s;
import com.umeng.analytics.pro.ai;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnumJsonFormatter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tR\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/squareup/wire/internal/b;", "Lcom/squareup/wire/s;", "E", "Lcom/squareup/wire/internal/i;", "", "value", ai.aD, "(Ljava/lang/String;)Lcom/squareup/wire/s;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lcom/squareup/wire/s;)Ljava/lang/String;", "", "b", "Ljava/util/Map;", "valueToString", "a", "stringToValue", "Lcom/squareup/wire/b;", "adapter", "<init>", "(Lcom/squareup/wire/b;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class b<E extends s> implements i<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, E> f56803a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<E, String> f56804b;

    public b(@NotNull com.squareup.wire.b<E> adapter) {
        s[] sVarArr;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        KClass<?> type = adapter.getType();
        Intrinsics.checkNotNull(type);
        Class javaClass = JvmClassMappingKt.getJavaClass((KClass) type);
        Objects.requireNonNull(javaClass, "null cannot be cast to non-null type java.lang.Class<E>");
        for (s sVar : (s[]) javaClass.getEnumConstants()) {
            Objects.requireNonNull(sVar, "null cannot be cast to non-null type kotlin.Enum<*>");
            String name = ((Enum) sVar).name();
            linkedHashMap.put(name, sVar);
            linkedHashMap.put(String.valueOf(sVar.getValue()), sVar);
            linkedHashMap2.put(sVar, name);
            WireEnumConstant wireEnumConstant = (WireEnumConstant) javaClass.getDeclaredField(name).getAnnotation(WireEnumConstant.class);
            if (wireEnumConstant != null) {
                if (wireEnumConstant.declaredName().length() > 0) {
                    linkedHashMap.put(wireEnumConstant.declaredName(), sVar);
                    linkedHashMap2.put(sVar, wireEnumConstant.declaredName());
                }
            }
        }
        this.f56803a = linkedHashMap;
        this.f56804b = linkedHashMap2;
    }

    @Override // com.squareup.wire.internal.i
    @Nullable
    /* renamed from: c */
    public E a(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.f56803a.get(value);
    }

    @Override // com.squareup.wire.internal.i
    @NotNull
    /* renamed from: d */
    public String b(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        String str = this.f56804b.get(value);
        Intrinsics.checkNotNull(str);
        return str;
    }
}
