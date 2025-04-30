package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ab extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private boolean f59612a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f59613b = false;

    /* renamed from: c  reason: collision with root package name */
    private List<aa> f59614c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<ac> f59615d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<aa> f59616e = new ArrayList<>();

    private int e() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.f59614c.size(); i4++) {
            try {
                i2 = Math.max(i2, this.f59614c.get(i4).c());
            } catch (Exception e4) {
                x.b(e4);
            }
        }
        return i2;
    }

    public final void a() {
        a(new Handler(Looper.getMainLooper()), 5000L);
    }

    public final void b() {
        for (int i2 = 0; i2 < this.f59614c.size(); i2++) {
            try {
                if (this.f59614c.get(i2).d().equals(Looper.getMainLooper().getThread().getName())) {
                    x.c("remove handler::%s", this.f59614c.get(i2));
                    this.f59614c.remove(i2);
                }
            } catch (Exception e4) {
                x.b(e4);
                return;
            }
        }
    }

    public final boolean c() {
        this.f59612a = true;
        if (isAlive()) {
            try {
                interrupt();
            } catch (Exception e4) {
                x.b(e4);
            }
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e4) {
            x.b(e4);
            return false;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!this.f59612a) {
            for (int i2 = 0; i2 < this.f59614c.size(); i2++) {
                try {
                    this.f59614c.get(i2).a();
                } catch (Exception e4) {
                    x.b(e4);
                } catch (OutOfMemoryError e5) {
                    x.b(e5);
                }
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            for (long j4 = 2000; j4 > 0 && !isInterrupted(); j4 = 2000 - (SystemClock.uptimeMillis() - uptimeMillis)) {
                Thread.sleep(j4);
            }
            int e6 = e();
            if (e6 != 0 && e6 != 1) {
                this.f59616e.clear();
                for (int i4 = 0; i4 < this.f59614c.size(); i4++) {
                    aa aaVar = this.f59614c.get(i4);
                    if (aaVar.b()) {
                        this.f59616e.add(aaVar);
                        aaVar.a(Long.MAX_VALUE);
                    }
                }
                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null && nativeCrashHandler.isEnableCatchAnrTrace()) {
                    nativeCrashHandler.dumpAnrNativeStack();
                    x.c("jni mannual dump anr trace", new Object[0]);
                } else {
                    x.c("do not enable jni mannual dump anr trace", new Object[0]);
                }
                int i5 = 0;
                while (true) {
                    if (this.f59613b) {
                        break;
                    }
                    x.c("do not enable anr continue check", new Object[0]);
                    Thread.sleep(2000L);
                    i5++;
                    if (i5 == 15) {
                        this.f59616e.clear();
                        break;
                    }
                }
                for (int i6 = 0; i6 < this.f59616e.size(); i6++) {
                    aa aaVar2 = this.f59616e.get(i6);
                    for (int i7 = 0; i7 < this.f59615d.size(); i7++) {
                        x.e("main thread blocked,now begin to upload anr stack", new Object[0]);
                        this.f59615d.get(i7).a(aaVar2);
                        this.f59613b = false;
                    }
                }
            }
        }
    }

    private void a(Handler handler, long j4) {
        if (handler == null) {
            x.e("addThread handler should not be null", new Object[0]);
            return;
        }
        String name = handler.getLooper().getThread().getName();
        for (int i2 = 0; i2 < this.f59614c.size(); i2++) {
            try {
                if (this.f59614c.get(i2).d().equals(handler.getLooper().getThread().getName())) {
                    x.e("addThread fail ,this thread has been added in monitor queue", new Object[0]);
                    return;
                }
            } catch (Exception e4) {
                x.b(e4);
            }
        }
        this.f59614c.add(new aa(handler, name, 5000L));
    }

    public final void b(ac acVar) {
        this.f59615d.remove(acVar);
    }

    public final void a(ac acVar) {
        if (this.f59615d.contains(acVar)) {
            x.c("addThreadMonitorListeners fail ,this threadMonitorListener has been added in monitor queue", new Object[0]);
        } else {
            this.f59615d.add(acVar);
        }
    }

    public final void a(boolean z3) {
        this.f59613b = true;
    }
}
