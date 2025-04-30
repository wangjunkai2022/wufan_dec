package cn.sharesdk.framework;

import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
/* compiled from: ForbSwitchFunction.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f8833b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f8834a = false;

    private c() {
        new Thread() { // from class: cn.sharesdk.framework.c.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    c.this.f8834a = MobSDK.isForb();
                } catch (Throwable th) {
                    SSDKLog.b().b(th);
                }
            }
        }.start();
    }

    public static c a() {
        synchronized (c.class) {
            if (f8833b == null) {
                synchronized (c.class) {
                    if (f8833b == null) {
                        f8833b = new c();
                    }
                }
            }
        }
        return f8833b;
    }
}
