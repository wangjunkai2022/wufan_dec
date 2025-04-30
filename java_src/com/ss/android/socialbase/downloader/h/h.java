package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* compiled from: WeakDownloadHandler.java */
/* loaded from: classes4.dex */
public class h extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<a> f58243a;

    /* compiled from: WeakDownloadHandler.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(Message message);
    }

    public h(Looper looper, a aVar) {
        super(looper);
        this.f58243a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f58243a.get();
        if (aVar == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
