package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2.dex */
public class JobScheduler {

    /* renamed from: k  reason: collision with root package name */
    static final String f12963k = "queueTime";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12964a;

    /* renamed from: b  reason: collision with root package name */
    private final d f12965b;

    /* renamed from: e  reason: collision with root package name */
    private final int f12968e;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f12966c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f12967d = new b();
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    com.facebook.imagepipeline.image.e f12969f = null;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    int f12970g = 0;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    JobState f12971h = JobState.IDLE;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    long f12972i = 0;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    long f12973j = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public enum JobState {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.d();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.j();
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12976a;

        static {
            int[] iArr = new int[JobState.values().length];
            f12976a = iArr;
            try {
                iArr[JobState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12976a[JobState.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12976a[JobState.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12976a[JobState.RUNNING_AND_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(com.facebook.imagepipeline.image.e eVar, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private static ScheduledExecutorService f12977a;

        e() {
        }

        static ScheduledExecutorService a() {
            if (f12977a == null) {
                f12977a = Executors.newSingleThreadScheduledExecutor();
            }
            return f12977a;
        }
    }

    public JobScheduler(Executor executor, d dVar, int i2) {
        this.f12964a = executor;
        this.f12965b = dVar;
        this.f12968e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.facebook.imagepipeline.image.e eVar;
        int i2;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            eVar = this.f12969f;
            i2 = this.f12970g;
            this.f12969f = null;
            this.f12970g = 0;
            this.f12971h = JobState.RUNNING;
            this.f12973j = uptimeMillis;
        }
        try {
            if (i(eVar, i2)) {
                this.f12965b.a(eVar, i2);
            }
        } finally {
            com.facebook.imagepipeline.image.e.d(eVar);
            g();
        }
    }

    private void e(long j4) {
        if (j4 > 0) {
            e.a().schedule(this.f12967d, j4, TimeUnit.MILLISECONDS);
        } else {
            this.f12967d.run();
        }
    }

    private void g() {
        long j4;
        boolean z3;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            if (this.f12971h == JobState.RUNNING_AND_PENDING) {
                j4 = Math.max(this.f12973j + this.f12968e, uptimeMillis);
                z3 = true;
                this.f12972i = uptimeMillis;
                this.f12971h = JobState.QUEUED;
            } else {
                this.f12971h = JobState.IDLE;
                j4 = 0;
                z3 = false;
            }
        }
        if (z3) {
            e(j4 - uptimeMillis);
        }
    }

    private static boolean i(com.facebook.imagepipeline.image.e eVar, int i2) {
        return com.facebook.imagepipeline.producers.b.d(i2) || com.facebook.imagepipeline.producers.b.m(i2, 4) || com.facebook.imagepipeline.image.e.y(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f12964a.execute(this.f12966c);
    }

    public void c() {
        com.facebook.imagepipeline.image.e eVar;
        synchronized (this) {
            eVar = this.f12969f;
            this.f12969f = null;
            this.f12970g = 0;
        }
        com.facebook.imagepipeline.image.e.d(eVar);
    }

    public synchronized long f() {
        return this.f12973j - this.f12972i;
    }

    public boolean h() {
        long max;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            boolean z3 = false;
            if (i(this.f12969f, this.f12970g)) {
                int i2 = c.f12976a[this.f12971h.ordinal()];
                if (i2 != 1) {
                    if (i2 == 3) {
                        this.f12971h = JobState.RUNNING_AND_PENDING;
                    }
                    max = 0;
                } else {
                    max = Math.max(this.f12973j + this.f12968e, uptimeMillis);
                    this.f12972i = uptimeMillis;
                    this.f12971h = JobState.QUEUED;
                    z3 = true;
                }
                if (z3) {
                    e(max - uptimeMillis);
                }
                return true;
            }
            return false;
        }
    }

    public boolean k(com.facebook.imagepipeline.image.e eVar, int i2) {
        com.facebook.imagepipeline.image.e eVar2;
        if (i(eVar, i2)) {
            synchronized (this) {
                eVar2 = this.f12969f;
                this.f12969f = com.facebook.imagepipeline.image.e.b(eVar);
                this.f12970g = i2;
            }
            com.facebook.imagepipeline.image.e.d(eVar2);
            return true;
        }
        return false;
    }
}
