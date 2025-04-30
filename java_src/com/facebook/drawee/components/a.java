package com.facebook.drawee.components;

import android.os.Handler;
import android.os.Looper;
import com.facebook.common.internal.h;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;
/* compiled from: DeferredReleaser.java */
/* loaded from: classes.dex */
public class a {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static a f11917d;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f11920c = new RunnableC0066a();

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f11918a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final Handler f11919b = new Handler(Looper.getMainLooper());

    /* compiled from: DeferredReleaser.java */
    /* renamed from: com.facebook.drawee.components.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0066a implements Runnable {
        RunnableC0066a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.d();
            for (b bVar : a.this.f11918a) {
                bVar.release();
            }
            a.this.f11918a.clear();
        }
    }

    /* compiled from: DeferredReleaser.java */
    /* loaded from: classes2.dex */
    public interface b {
        void release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        h.o(Looper.getMainLooper().getThread() == Thread.currentThread());
    }

    public static synchronized a e() {
        a aVar;
        synchronized (a.class) {
            if (f11917d == null) {
                f11917d = new a();
            }
            aVar = f11917d;
        }
        return aVar;
    }

    public void c(b bVar) {
        d();
        this.f11918a.remove(bVar);
    }

    public void f(b bVar) {
        d();
        if (this.f11918a.add(bVar) && this.f11918a.size() == 1) {
            this.f11919b.post(this.f11920c);
        }
    }
}
