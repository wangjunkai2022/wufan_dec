package com.ss.android.socialbase.downloader.network;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: NetTrafficManager.java */
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58548a = "k";

    /* renamed from: b  reason: collision with root package name */
    private final d f58549b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f58550c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<l> f58551d;

    /* renamed from: e  reason: collision with root package name */
    private AtomicReference<l> f58552e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayList<b> f58553f;

    /* renamed from: g  reason: collision with root package name */
    private int f58554g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetTrafficManager.java */
    /* renamed from: com.ss.android.socialbase.downloader.network.k$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58555a;

        static {
            int[] iArr = new int[l.values().length];
            f58555a = iArr;
            try {
                iArr[l.POOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58555a[l.MODERATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58555a[l.GOOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58555a[l.EXCELLENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: NetTrafficManager.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final k f58556a = new k(null);
    }

    /* compiled from: NetTrafficManager.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(l lVar);
    }

    /* synthetic */ k(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static k a() {
        return a.f58556a;
    }

    private boolean c() {
        if (this.f58549b == null) {
            return false;
        }
        try {
            int i2 = AnonymousClass1.f58555a[this.f58551d.get().ordinal()];
            double d4 = 2000.0d;
            double d5 = 550.0d;
            if (i2 == 1) {
                d5 = 0.0d;
                d4 = 150.0d;
            } else if (i2 == 2) {
                d4 = 550.0d;
                d5 = 150.0d;
            } else if (i2 != 3) {
                if (i2 != 4) {
                    return true;
                }
                d4 = 3.4028234663852886E38d;
                d5 = 2000.0d;
            }
            double a4 = this.f58549b.a();
            if (a4 > d4) {
                if (a4 > d4 * 1.25d) {
                    return true;
                }
            } else if (a4 < d5 * 0.8d) {
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    private void d() {
        try {
            int size = this.f58553f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f58553f.get(i2).a(this.f58551d.get());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public synchronized l b() {
        d dVar = this.f58549b;
        if (dVar == null) {
            return l.UNKNOWN;
        }
        return a(dVar.a());
    }

    private k() {
        this.f58549b = new d(0.05d);
        this.f58550c = false;
        this.f58551d = new AtomicReference<>(l.UNKNOWN);
        this.f58553f = new ArrayList<>();
    }

    public synchronized void a(long j4, long j5) {
        l b4;
        double d4 = j4;
        Double.isNaN(d4);
        double d5 = j5;
        Double.isNaN(d5);
        double d6 = ((d4 * 1.0d) / d5) * 8.0d;
        if (j5 == 0 || d6 < 3.0d) {
            return;
        }
        try {
            this.f58549b.a(d6);
            b4 = b();
        } catch (Throwable unused) {
        }
        if (this.f58550c) {
            this.f58554g++;
            if (b4 != this.f58552e.get()) {
                this.f58550c = false;
                this.f58554g = 1;
            }
            if (this.f58554g >= 5.0d && c()) {
                this.f58550c = false;
                this.f58554g = 1;
                this.f58551d.set(this.f58552e.get());
                d();
            }
            return;
        }
        if (this.f58551d.get() != b4) {
            this.f58550c = true;
            this.f58552e = new AtomicReference<>(b4);
        }
    }

    private l a(double d4) {
        if (d4 < 0.0d) {
            return l.UNKNOWN;
        }
        if (d4 < 150.0d) {
            return l.POOR;
        }
        if (d4 < 550.0d) {
            return l.MODERATE;
        }
        if (d4 < 2000.0d) {
            return l.GOOD;
        }
        return l.EXCELLENT;
    }
}
