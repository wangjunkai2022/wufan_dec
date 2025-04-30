package com.switfpass.pay.activity.zxing.decoding;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private final Activity f58770b;

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f58769a = Executors.newSingleThreadScheduledExecutor(new l((byte) 0));

    /* renamed from: c  reason: collision with root package name */
    private ScheduledFuture f58771c = null;

    public c(Activity activity) {
        this.f58770b = activity;
        b();
    }

    private void a() {
        ScheduledFuture scheduledFuture = this.f58771c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f58771c = null;
        }
    }

    public final void b() {
        a();
        this.f58771c = this.f58769a.schedule(new b(this.f58770b), 300L, TimeUnit.SECONDS);
    }

    public final void c() {
        a();
        this.f58769a.shutdown();
    }
}
