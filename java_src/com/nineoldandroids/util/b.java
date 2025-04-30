package com.nineoldandroids.util;
/* compiled from: IntProperty.java */
/* loaded from: classes4.dex */
public abstract class b<T> extends c<T, Integer> {
    public b(String str) {
        super(Integer.class, str);
    }

    @Override // com.nineoldandroids.util.c
    /* renamed from: f */
    public final void e(T t3, Integer num) {
        e(t3, Integer.valueOf(num.intValue()));
    }

    public abstract void g(T t3, int i2);
}
