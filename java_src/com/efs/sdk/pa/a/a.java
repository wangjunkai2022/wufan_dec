package com.efs.sdk.pa.a;

import android.app.Application;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.efs.sdk.pa.PAANRListener;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f11482a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f11483b;

    /* renamed from: c  reason: collision with root package name */
    final Thread f11484c;

    /* renamed from: d  reason: collision with root package name */
    long f11485d;

    /* renamed from: e  reason: collision with root package name */
    long f11486e;

    /* renamed from: f  reason: collision with root package name */
    boolean f11487f;

    /* renamed from: g  reason: collision with root package name */
    Handler f11488g;

    /* renamed from: h  reason: collision with root package name */
    PAANRListener f11489h;

    /* renamed from: i  reason: collision with root package name */
    long f11490i;

    /* renamed from: j  reason: collision with root package name */
    long f11491j;

    /* renamed from: k  reason: collision with root package name */
    final long f11492k;

    /* renamed from: l  reason: collision with root package name */
    boolean f11493l;

    /* renamed from: m  reason: collision with root package name */
    final Runnable f11494m;

    /* renamed from: n  reason: collision with root package name */
    final Runnable f11495n;

    /* renamed from: o  reason: collision with root package name */
    private HandlerThread f11496o;

    /* renamed from: p  reason: collision with root package name */
    private Application f11497p;

    public a(Application application, long j4) {
        this(application, j4, true);
    }

    static boolean a(StringBuilder sb) {
        Set<Map.Entry<Thread, StackTraceElement[]>> entrySet = Thread.getAllStackTraces().entrySet();
        if (entrySet.size() == 0) {
            return false;
        }
        boolean z3 = false;
        for (Map.Entry<Thread, StackTraceElement[]> entry : entrySet) {
            Thread key = entry.getKey();
            StackTraceElement[] value = entry.getValue();
            if (key.getId() == Looper.getMainLooper().getThread().getId()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(key.getName());
                sb2.append(" ");
                sb2.append(key.getPriority());
                sb2.append(" ");
                sb2.append(key.getState());
                sb2.append("\n");
                for (StackTraceElement stackTraceElement : value) {
                    String stackTraceElement2 = stackTraceElement.toString();
                    sb2.append("  at  ");
                    sb2.append(stackTraceElement2);
                    sb2.append('\n');
                }
                sb2.append("\n");
                sb.insert(0, (CharSequence) sb2);
                z3 = true;
            } else {
                sb.append(key.getName());
                sb.append(" ");
                sb.append(key.getPriority());
                sb.append(" ");
                sb.append(key.getState());
                sb.append("\n");
                for (StackTraceElement stackTraceElement3 : value) {
                    String stackTraceElement4 = stackTraceElement3.toString();
                    sb.append("  at  ");
                    sb.append(stackTraceElement4);
                    sb.append('\n');
                }
                sb.append("\n");
            }
        }
        if (!z3) {
            sb.insert(0, a(Looper.getMainLooper().getThread()));
        }
        return true;
    }

    public a(Application application, long j4, boolean z3) {
        this.f11482a = true;
        this.f11486e = 4L;
        this.f11487f = true;
        this.f11490i = 0L;
        this.f11494m = new Runnable() { // from class: com.efs.sdk.pa.a.a.1
            /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
                if (com.efs.sdk.pa.a.a.a(r1) != false) goto L24;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r6 = this;
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    boolean r0 = r0.f11487f
                    if (r0 == 0) goto L7
                    return
                L7:
                    long r0 = android.os.SystemClock.uptimeMillis()
                    com.efs.sdk.pa.a.a r2 = com.efs.sdk.pa.a.a.this
                    long r3 = r2.f11491j
                    long r0 = r0 - r3
                    long r3 = r2.f11492k
                    int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                    if (r5 <= 0) goto L21
                    com.efs.sdk.pa.PAANRListener r2 = r2.f11489h
                    if (r2 == 0) goto L21
                    java.lang.Long r0 = java.lang.Long.valueOf(r0)
                    r2.unexcept(r0)
                L21:
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    boolean r0 = r0.f11482a
                    if (r0 == 0) goto L3a
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    r1 = 0
                    r0.f11490i = r1
                    r1 = 0
                    r0.f11482a = r1
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    android.os.Handler r1 = r0.f11483b
                    java.lang.Runnable r0 = r0.f11495n
                    r1.postAtFrontOfQueue(r0)
                    goto L81
                L3a:
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    long r1 = r0.f11490i
                    r3 = 1
                    long r1 = r1 + r3
                    r0.f11490i = r1
                    boolean r0 = r0.f11482a
                    if (r0 != 0) goto L81
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    long r1 = r0.f11490i
                    long r3 = r0.f11486e
                    int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                    if (r5 < 0) goto L81
                    int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                    if (r5 != 0) goto L81
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    boolean r2 = r0.f11493l
                    if (r2 == 0) goto L68
                    java.lang.Thread r2 = r0.f11484c
                    java.lang.String r2 = com.efs.sdk.pa.a.a.a(r2)
                    r1.append(r2)
                    goto L6e
                L68:
                    boolean r2 = com.efs.sdk.pa.a.a.a(r1)
                    if (r2 == 0) goto L81
                L6e:
                    com.efs.sdk.pa.PAANRListener r2 = r0.f11489h
                    if (r2 == 0) goto L81
                    int r2 = r1.length()
                    if (r2 <= 0) goto L81
                    com.efs.sdk.pa.PAANRListener r0 = r0.f11489h
                    java.lang.String r1 = r1.toString()
                    r0.anrStack(r1)
                L81:
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    long r1 = android.os.SystemClock.uptimeMillis()
                    r0.f11491j = r1
                    com.efs.sdk.pa.a.a r0 = com.efs.sdk.pa.a.a.this
                    android.os.Handler r1 = r0.f11488g
                    java.lang.Runnable r2 = r0.f11494m
                    long r3 = r0.f11485d
                    r1.postDelayed(r2, r3)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.efs.sdk.pa.a.a.AnonymousClass1.run():void");
            }
        };
        this.f11495n = new Runnable() { // from class: com.efs.sdk.pa.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a.this.f11482a = true;
            }
        };
        this.f11492k = j4;
        this.f11497p = application;
        this.f11493l = z3;
        long j5 = (((float) j4) * 0.8f) / this.f11486e;
        this.f11485d = j5;
        if (j5 < 100) {
            this.f11485d = 100L;
            this.f11486e = j4 / 100;
        }
        StringBuilder sb = new StringBuilder("anrTrace, final mAnrBeatTime:");
        sb.append(this.f11485d);
        sb.append(", mAnrBeatRate:");
        sb.append(this.f11485d);
        this.f11484c = Looper.getMainLooper().getThread();
        this.f11483b = new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread("ANR HANDLER THREAD");
        this.f11496o = handlerThread;
        handlerThread.start();
        this.f11488g = new Handler(this.f11496o.getLooper());
    }

    static String a(Thread thread) {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = thread.getStackTrace();
        sb.append(thread.getName());
        sb.append(" ");
        sb.append(thread.getPriority());
        sb.append(" ");
        sb.append(thread.getState());
        sb.append("\n");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String stackTraceElement2 = stackTraceElement.toString();
            sb.append("  at  ");
            sb.append(stackTraceElement2);
            sb.append('\n');
        }
        sb.append("\n");
        return sb.toString();
    }
}
