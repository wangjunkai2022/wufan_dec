package com.facebook.imagepipeline.core;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: PriorityThreadFactory.java */
/* loaded from: classes2.dex */
public class j implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final int f12665a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12666b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12667c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f12668d;

    /* compiled from: PriorityThreadFactory.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f12669a;

        a(Runnable runnable) {
            this.f12669a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(j.this.f12665a);
            } catch (Throwable unused) {
            }
            this.f12669a.run();
        }
    }

    public j(int i2) {
        this(i2, "PriorityThreadFactory", true);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str;
        a aVar = new a(runnable);
        if (this.f12667c) {
            str = this.f12666b + "-" + this.f12668d.getAndIncrement();
        } else {
            str = this.f12666b;
        }
        return new Thread(aVar, str);
    }

    public j(int i2, String str, boolean z3) {
        this.f12668d = new AtomicInteger(1);
        this.f12665a = i2;
        this.f12666b = str;
        this.f12667c = z3;
    }
}
