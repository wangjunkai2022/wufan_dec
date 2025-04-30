package com.switfpass.pay.activity.zxing.decoding;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes4.dex */
final class l implements ThreadFactory {
    private l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(byte b4) {
        this();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        return thread;
    }
}
