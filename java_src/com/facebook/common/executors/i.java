package com.facebook.common.executors;

import android.os.Handler;
import android.os.Looper;
import javax.annotation.Nullable;
/* compiled from: UiThreadImmediateExecutorService.java */
/* loaded from: classes.dex */
public class i extends e {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static i f11688b;

    private i() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static i f() {
        if (f11688b == null) {
            f11688b = new i();
        }
        return f11688b;
    }

    @Override // com.facebook.common.executors.e, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (v0()) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }
}
