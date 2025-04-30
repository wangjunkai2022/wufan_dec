package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.fresco.animation.backend.a;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
/* loaded from: classes.dex */
public class c<T extends com.facebook.fresco.animation.backend.a> extends com.facebook.fresco.animation.backend.b<T> {
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    static final long f12235p = 2000;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static final long f12236q = 1000;

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.common.time.c f12237h;

    /* renamed from: i  reason: collision with root package name */
    private final ScheduledExecutorService f12238i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f12239j;

    /* renamed from: k  reason: collision with root package name */
    private long f12240k;

    /* renamed from: l  reason: collision with root package name */
    private long f12241l;

    /* renamed from: m  reason: collision with root package name */
    private long f12242m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private b f12243n;

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f12244o;

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                c.this.f12239j = false;
                if (c.this.v()) {
                    if (c.this.f12243n != null) {
                        c.this.f12243n.a();
                    }
                } else {
                    c.this.w();
                }
            }
        }
    }

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();
    }

    private c(@Nullable T t3, @Nullable b bVar, com.facebook.common.time.c cVar, ScheduledExecutorService scheduledExecutorService) {
        super(t3);
        this.f12239j = false;
        this.f12241l = f12235p;
        this.f12242m = 1000L;
        this.f12244o = new a();
        this.f12243n = bVar;
        this.f12237h = cVar;
        this.f12238i = scheduledExecutorService;
    }

    public static <T extends com.facebook.fresco.animation.backend.a & b> com.facebook.fresco.animation.backend.b<T> r(T t3, com.facebook.common.time.c cVar, ScheduledExecutorService scheduledExecutorService) {
        return s(t3, (b) t3, cVar, scheduledExecutorService);
    }

    public static <T extends com.facebook.fresco.animation.backend.a> com.facebook.fresco.animation.backend.b<T> s(T t3, b bVar, com.facebook.common.time.c cVar, ScheduledExecutorService scheduledExecutorService) {
        return new c(t3, bVar, cVar, scheduledExecutorService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v() {
        return this.f12237h.now() - this.f12240k > this.f12241l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        if (!this.f12239j) {
            this.f12239j = true;
            this.f12238i.schedule(this.f12244o, this.f12242m, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.facebook.fresco.animation.backend.b, com.facebook.fresco.animation.backend.a
    public boolean i(Drawable drawable, Canvas canvas, int i2) {
        this.f12240k = this.f12237h.now();
        boolean i4 = super.i(drawable, canvas, i2);
        w();
        return i4;
    }

    public long t() {
        return this.f12242m;
    }

    public long u() {
        return this.f12241l;
    }

    public void x(long j4) {
        this.f12242m = j4;
    }

    public void y(@Nullable b bVar) {
        this.f12243n = bVar;
    }

    public void z(long j4) {
        this.f12241l = j4;
    }
}
