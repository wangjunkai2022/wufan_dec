package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
/* compiled from: DownloadWatchDog.java */
/* loaded from: classes4.dex */
public final class e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private volatile Handler f58233a = new Handler(a.f58234a, this);

    /* compiled from: DownloadWatchDog.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Looper f58234a;

        static {
            HandlerThread handlerThread = new HandlerThread("DownloadWatchDog");
            handlerThread.start();
            f58234a = handlerThread.getLooper();
        }
    }

    /* compiled from: DownloadWatchDog.java */
    /* loaded from: classes4.dex */
    public interface b {
        long a();
    }

    public static Looper a() {
        return a.f58234a;
    }

    public void b() {
        Handler handler = this.f58233a;
        if (handler == null) {
            return;
        }
        this.f58233a = null;
        handler.removeCallbacksAndMessages(null);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what != 0) {
            return true;
        }
        try {
            b bVar = (b) message.obj;
            long a4 = bVar.a();
            if (a4 > 0) {
                a(bVar, a4);
                return true;
            }
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public void a(b bVar, long j4) {
        Handler handler = this.f58233a;
        if (handler == null) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 0;
        obtain.obj = bVar;
        handler.sendMessageDelayed(obtain, j4);
    }
}
