package com.xinzhu.haunted.android.media;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAudioService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63316a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63317b = com.xinzhu.haunted.d.b("android.media.IAudioService");

    /* compiled from: HtIAudioService.java */
    /* renamed from: com.xinzhu.haunted.android.media.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0378a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63318a = com.xinzhu.haunted.d.b("android.media.IAudioService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63319b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63320c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63319b.get().invoke(null, arg0);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean b(IBinder arg0) {
            if (f63319b.get() == null) {
                if (f63320c) {
                    return false;
                }
                f63319b.compareAndSet(null, com.xinzhu.haunted.d.g(f63318a, "asInterface", IBinder.class));
                f63320c = true;
                return f63319b.get() != null;
            }
            return true;
        }
    }
}
