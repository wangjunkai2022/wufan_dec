package org.androidannotations.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;
/* compiled from: UiThreadExecutor.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f73153a = new a(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, C0487b> f73154b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UiThreadExecutor.java */
    /* loaded from: classes5.dex */
    public static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Runnable callback = message.getCallback();
            if (callback != null) {
                callback.run();
                b.c((C0487b) message.obj);
                return;
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UiThreadExecutor.java */
    /* renamed from: org.androidannotations.api.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0487b {

        /* renamed from: a  reason: collision with root package name */
        int f73155a;

        /* renamed from: b  reason: collision with root package name */
        final String f73156b;

        /* synthetic */ C0487b(String str, a aVar) {
            this(str);
        }

        private C0487b(String str) {
            this.f73155a = 0;
            this.f73156b = str;
        }
    }

    private b() {
    }

    public static void b(String str) {
        C0487b remove;
        Map<String, C0487b> map = f73154b;
        synchronized (map) {
            remove = map.remove(str);
        }
        if (remove == null) {
            return;
        }
        f73153a.removeCallbacksAndMessages(remove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(C0487b c0487b) {
        String str;
        C0487b remove;
        Map<String, C0487b> map = f73154b;
        synchronized (map) {
            int i2 = c0487b.f73155a - 1;
            c0487b.f73155a = i2;
            if (i2 == 0 && (remove = map.remove((str = c0487b.f73156b))) != c0487b) {
                map.put(str, remove);
            }
        }
    }

    private static C0487b d(String str) {
        C0487b c0487b;
        Map<String, C0487b> map = f73154b;
        synchronized (map) {
            c0487b = map.get(str);
            if (c0487b == null) {
                c0487b = new C0487b(str, null);
                map.put(str, c0487b);
            }
            c0487b.f73155a++;
        }
        return c0487b;
    }

    public static void e(String str, Runnable runnable, long j4) {
        if ("".equals(str)) {
            f73153a.postDelayed(runnable, j4);
            return;
        }
        f73153a.postAtTime(runnable, d(str), SystemClock.uptimeMillis() + j4);
    }
}
