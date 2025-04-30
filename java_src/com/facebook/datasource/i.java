package com.facebook.datasource;
/* compiled from: SimpleDataSource.java */
/* loaded from: classes2.dex */
public class i<T> extends AbstractDataSource<T> {
    private i() {
    }

    public static <T> i<T> s() {
        return new i<>();
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean m(Throwable th) {
        return super.m((Throwable) com.facebook.common.internal.h.i(th));
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean o(float f4) {
        return super.o(f4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setResult(T t3, boolean z3) {
        return super.setResult(com.facebook.common.internal.h.i(t3), z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setResult(T t3) {
        return super.setResult(com.facebook.common.internal.h.i(t3), true);
    }
}
