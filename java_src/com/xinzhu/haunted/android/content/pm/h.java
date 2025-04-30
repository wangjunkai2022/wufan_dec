package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageInstaller;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtPackageInstaller.java */
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63090a = "h";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63091b = com.xinzhu.haunted.d.a(PackageInstaller.class);

    /* compiled from: HtPackageInstaller.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f63092b = com.xinzhu.haunted.d.b("android.content.pm.PackageInstaller$SessionParams");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f63093c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f63094d = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f63095a;

        public a(Object egoInstance) {
            this.f63095a = egoInstance;
        }

        public boolean a() {
            if (f63093c.get() == null) {
                if (f63094d) {
                    return false;
                }
                f63093c.compareAndSet(null, com.xinzhu.haunted.d.f(f63092b, "installerPackageName"));
                f63094d = true;
                return f63093c.get() != null;
            }
            return true;
        }

        public String b() {
            if (a()) {
                try {
                    return (String) f63093c.get().get(this.f63095a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean c(String value) {
            if (a()) {
                try {
                    f63093c.get().set(this.f63095a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private a() {
        }
    }
}
