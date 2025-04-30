package com.nineoldandroids.util;
/* compiled from: FloatProperty.java */
/* loaded from: classes4.dex */
public abstract class a<T> extends c<T, Float> {
    public a(String str) {
        super(Float.class, str);
    }

    @Override // com.nineoldandroids.util.c
    /* renamed from: f */
    public final void e(T t3, Float f4) {
        g(t3, f4.floatValue());
    }

    public abstract void g(T t3, float f4);
}
