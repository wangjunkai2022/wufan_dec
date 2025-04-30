package com.facebook.imagepipeline.datasource;

import com.facebook.datasource.AbstractDataSource;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: SettableDataSource.java */
@ThreadSafe
/* loaded from: classes.dex */
public final class h<T> extends AbstractDataSource<com.facebook.common.references.a<T>> {
    private h() {
    }

    public static <V> h<V> t() {
        return new h<>();
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean o(float f4) {
        return super.o(f4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.AbstractDataSource
    /* renamed from: s */
    public void i(@Nullable com.facebook.common.references.a<T> aVar) {
        com.facebook.common.references.a.g(aVar);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    @Nullable
    /* renamed from: u */
    public com.facebook.common.references.a<T> g() {
        return com.facebook.common.references.a.d((com.facebook.common.references.a) super.g());
    }

    public boolean v(@Nullable com.facebook.common.references.a<T> aVar) {
        return super.setResult(com.facebook.common.references.a.d(aVar), true);
    }

    public boolean w(Throwable th) {
        return super.m(th);
    }
}
