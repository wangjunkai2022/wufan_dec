package com.facebook.imagepipeline.systrace;

import javax.annotation.Nullable;
/* compiled from: FrescoSystrace.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final InterfaceC0087b f13339a = new c();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f13340b = null;

    /* compiled from: FrescoSystrace.java */
    /* renamed from: com.facebook.imagepipeline.systrace.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0087b {
        InterfaceC0087b a(String str, Object obj);

        InterfaceC0087b b(String str, long j4);

        InterfaceC0087b c(String str, int i2);

        InterfaceC0087b d(String str, double d4);

        void flush();
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes2.dex */
    private static final class c implements InterfaceC0087b {
        private c() {
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public InterfaceC0087b a(String str, Object obj) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public InterfaceC0087b b(String str, long j4) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public InterfaceC0087b c(String str, int i2) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public InterfaceC0087b d(String str, double d4) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public void flush() {
        }
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(String str);

        InterfaceC0087b b(String str);

        void c();

        boolean d();
    }

    private b() {
    }

    public static void a(String str) {
        d().a(str);
    }

    public static InterfaceC0087b b(String str) {
        return d().b(str);
    }

    public static void c() {
        d().c();
    }

    private static d d() {
        if (f13340b == null) {
            synchronized (b.class) {
                if (f13340b == null) {
                    f13340b = new com.facebook.imagepipeline.systrace.a();
                }
            }
        }
        return f13340b;
    }

    public static boolean e() {
        return d().d();
    }

    public static void f(d dVar) {
        f13340b = dVar;
    }
}
