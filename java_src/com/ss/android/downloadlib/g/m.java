package com.ss.android.downloadlib.g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* compiled from: WeakHandler.java */
/* loaded from: classes4.dex */
public class m extends Handler {

    /* renamed from: a  reason: collision with root package name */
    WeakReference<a> f57533a;

    /* compiled from: WeakHandler.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(Message message);
    }

    public m(Looper looper, a aVar) {
        super(looper);
        this.f57533a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f57533a.get();
        if (aVar == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
