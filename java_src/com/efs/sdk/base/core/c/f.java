package com.efs.sdk.base.core.c;

import android.content.Context;
import com.efs.sdk.base.core.controller.ControllerCenter;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileLock;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    static FileLock f11288b;

    /* renamed from: a  reason: collision with root package name */
    volatile int f11289a;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f11292a = new f((byte) 0);

        public static /* synthetic */ f a() {
            return f11292a;
        }
    }

    /* synthetic */ f(byte b4) {
        this();
    }

    public final boolean a() {
        if (this.f11289a == 2) {
            return true;
        }
        if (this.f11289a == 0) {
            a(ControllerCenter.getGlobalEnvStruct().mAppContext);
            return false;
        }
        return false;
    }

    private f() {
        this.f11289a = 0;
        a(ControllerCenter.getGlobalEnvStruct().mAppContext);
    }

    private synchronized void a(final Context context) {
        com.efs.sdk.base.core.util.d.a("efs.send_log", "tryFileLock start! ", null);
        this.f11289a = 1;
        new Thread(new Runnable() { // from class: com.efs.sdk.base.core.c.f.1
            @Override // java.lang.Runnable
            public final void run() {
                FileLock lock;
                try {
                    File a4 = com.efs.sdk.base.core.util.a.a(context);
                    if (!a4.exists()) {
                        a4.mkdirs();
                    }
                    File file = new File(a4.getPath() + File.separator + "sendlock");
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    do {
                        lock = new FileOutputStream(file).getChannel().lock();
                        f.f11288b = lock;
                    } while (!lock.isValid());
                    com.efs.sdk.base.core.util.d.a("efs.send_log", "tryFileLock sendlock sucess! processname: " + com.efs.sdk.base.core.util.e.b(), null);
                    f.this.f11289a = 2;
                } catch (Exception e4) {
                    com.efs.sdk.base.core.util.d.a("efs.send_log", "tryFileLock fail! " + e4.getMessage(), null);
                    f.this.f11289a = 0;
                }
            }
        }).start();
    }
}
