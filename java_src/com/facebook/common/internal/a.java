package com.facebook.common.internal;
/* compiled from: AndroidPredicates.java */
/* loaded from: classes2.dex */
public class a {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: AndroidPredicates.java */
    /* renamed from: com.facebook.common.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0061a<T> implements i<T> {
        C0061a() {
        }

        @Override // com.facebook.common.internal.i
        public boolean apply(T t3) {
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: AndroidPredicates.java */
    /* loaded from: classes2.dex */
    static class b<T> implements i<T> {
        b() {
        }

        @Override // com.facebook.common.internal.i
        public boolean apply(T t3) {
            return false;
        }
    }

    private a() {
    }

    public static <T> i<T> a() {
        return new b();
    }

    public static <T> i<T> b() {
        return new C0061a();
    }
}
