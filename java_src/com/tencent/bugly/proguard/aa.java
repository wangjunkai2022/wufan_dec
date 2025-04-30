package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f59606a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59607b;

    /* renamed from: c  reason: collision with root package name */
    private long f59608c;

    /* renamed from: d  reason: collision with root package name */
    private final long f59609d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59610e = true;

    /* renamed from: f  reason: collision with root package name */
    private long f59611f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(Handler handler, String str, long j4) {
        this.f59606a = handler;
        this.f59607b = str;
        this.f59608c = j4;
        this.f59609d = j4;
    }

    public final void a() {
        if (this.f59610e) {
            this.f59610e = false;
            this.f59611f = SystemClock.uptimeMillis();
            this.f59606a.post(this);
        }
    }

    public final boolean b() {
        return !this.f59610e && SystemClock.uptimeMillis() > this.f59611f + this.f59608c;
    }

    public final int c() {
        if (this.f59610e) {
            return 0;
        }
        return SystemClock.uptimeMillis() - this.f59611f < this.f59608c ? 1 : 3;
    }

    public final String d() {
        return this.f59607b;
    }

    public final Looper e() {
        return this.f59606a.getLooper();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f59610e = true;
        this.f59608c = this.f59609d;
    }

    public final void a(long j4) {
        this.f59608c = Long.MAX_VALUE;
    }
}
