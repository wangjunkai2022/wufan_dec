package com.facebook.common.internal;
/* compiled from: Suppliers.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final k<Boolean> f11699a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final k<Boolean> f11700b = new c();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    static class a<T> implements k<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f11701a;

        a(Object obj) {
            this.f11701a = obj;
        }

        @Override // com.facebook.common.internal.k
        public T get() {
            return (T) this.f11701a;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    static class b implements k<Boolean> {
        b() {
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public Boolean get() {
            return Boolean.TRUE;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    static class c implements k<Boolean> {
        c() {
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public Boolean get() {
            return Boolean.FALSE;
        }
    }

    public static <T> k<T> a(T t3) {
        return new a(t3);
    }
}
