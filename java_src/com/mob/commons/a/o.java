package com.mob.commons.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mob.commons.u;
import com.mob.tools.MobHandlerThread;
import com.mob.tools.MobLog;
/* loaded from: classes4.dex */
public class o implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private static o f52810a = new o();

    /* renamed from: b  reason: collision with root package name */
    private Handler f52811b;

    private o() {
        String str;
        if (TextUtils.isEmpty("M-")) {
            str = null;
        } else {
            str = u.f53112a + a("004Mfjhjijhm");
        }
        this.f52811b = MobHandlerThread.newHandler(str, this);
    }

    public static o a() {
        return f52810a;
    }

    public Looper b() {
        Handler handler = this.f52811b;
        if (handler != null) {
            return handler.getLooper();
        }
        return null;
    }

    public boolean c(long j4, Runnable runnable) {
        return b(1005, j4, runnable);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        c a4;
        try {
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        if (!com.mob.commons.b.d()) {
            Message obtain = Message.obtain();
            obtain.copyFrom(message);
            this.f52811b.sendMessageDelayed(obtain, 60000L);
            return false;
        }
        int i2 = message.what;
        if (i2 != 1003 && i2 != 1004) {
            if (i2 == 1005) {
                Runnable runnable = (Runnable) message.obj;
                if (runnable != null) {
                    u.f53114c.execute(runnable);
                }
            } else if (i2 >= 10000 || i2 < -10000) {
                Object[] objArr = (Object[]) message.obj;
                Class cls = (Class) objArr[0];
                if (cls != null && (a4 = c.a(cls)) != null) {
                    Object[] objArr2 = (Object[]) objArr[1];
                    a4.f52784b = ((Integer) objArr2[0]).intValue();
                    a4.f52783a = objArr2[1];
                    a4.g();
                }
            }
            return false;
        }
        Runnable runnable2 = (Runnable) message.obj;
        if (runnable2 != null) {
            u.f53115d.execute(runnable2);
        }
        return false;
    }

    public void a(long j4, Class<? extends c> cls, Object[] objArr, int i2) {
        int a4 = a(cls);
        if (i2 == 1) {
            this.f52811b.removeMessages(a4);
        } else if (i2 == 2 && this.f52811b.hasMessages(a4)) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = a4;
        obtain.obj = new Object[]{cls, objArr};
        a(obtain, j4 * 1000);
    }

    public boolean b(long j4, Runnable runnable) {
        return a(1004, j4 * 1000, runnable);
    }

    private boolean b(int i2, long j4, Runnable runnable) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.obj = runnable;
        a(obtain, j4);
        return true;
    }

    public boolean a(long j4, Runnable runnable) {
        return a(1003, j4 * 1000, runnable);
    }

    private boolean a(int i2, long j4, Runnable runnable) {
        if (this.f52811b.hasMessages(i2)) {
            return false;
        }
        b(i2, j4, runnable);
        return true;
    }

    private int a(Class<? extends c> cls) {
        int hashCode = cls.getName().hashCode();
        return hashCode > 0 ? hashCode + 10000 : hashCode - 10000;
    }

    private void a(Message message, long j4) {
        if (j4 > 0) {
            this.f52811b.sendMessageDelayed(message, j4);
        } else {
            this.f52811b.sendMessage(message);
        }
    }

    public static String a(String str) {
        return com.mob.commons.r.a(str, 100);
    }
}
