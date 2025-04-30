package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* compiled from: SnackbarManager.java */
/* loaded from: classes2.dex */
class b {

    /* renamed from: e  reason: collision with root package name */
    static final int f15856e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f15857f = 1500;

    /* renamed from: g  reason: collision with root package name */
    private static final int f15858g = 2750;

    /* renamed from: h  reason: collision with root package name */
    private static b f15859h;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f15860a = new Object();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f15861b = new Handler(Looper.getMainLooper(), new a());
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private c f15862c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private c f15863d;

    /* compiled from: SnackbarManager.java */
    /* loaded from: classes2.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            b.this.d((c) message.obj);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SnackbarManager.java */
    /* renamed from: com.google.android.material.snackbar.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0114b {
        void a(int i2);

        void show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnackbarManager.java */
    /* loaded from: classes2.dex */
    public static class c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<InterfaceC0114b> f15865a;

        /* renamed from: b  reason: collision with root package name */
        int f15866b;

        /* renamed from: c  reason: collision with root package name */
        boolean f15867c;

        c(int i2, InterfaceC0114b interfaceC0114b) {
            this.f15865a = new WeakReference<>(interfaceC0114b);
            this.f15866b = i2;
        }

        boolean a(@Nullable InterfaceC0114b interfaceC0114b) {
            return interfaceC0114b != null && this.f15865a.get() == interfaceC0114b;
        }
    }

    private b() {
    }

    private boolean a(@NonNull c cVar, int i2) {
        InterfaceC0114b interfaceC0114b = cVar.f15865a.get();
        if (interfaceC0114b != null) {
            this.f15861b.removeCallbacksAndMessages(cVar);
            interfaceC0114b.a(i2);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b c() {
        if (f15859h == null) {
            f15859h = new b();
        }
        return f15859h;
    }

    private boolean g(InterfaceC0114b interfaceC0114b) {
        c cVar = this.f15862c;
        return cVar != null && cVar.a(interfaceC0114b);
    }

    private boolean h(InterfaceC0114b interfaceC0114b) {
        c cVar = this.f15863d;
        return cVar != null && cVar.a(interfaceC0114b);
    }

    private void m(@NonNull c cVar) {
        int i2 = cVar.f15866b;
        if (i2 == -2) {
            return;
        }
        if (i2 <= 0) {
            i2 = i2 == -1 ? 1500 : f15858g;
        }
        this.f15861b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f15861b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i2);
    }

    private void o() {
        c cVar = this.f15863d;
        if (cVar != null) {
            this.f15862c = cVar;
            this.f15863d = null;
            InterfaceC0114b interfaceC0114b = cVar.f15865a.get();
            if (interfaceC0114b != null) {
                interfaceC0114b.show();
            } else {
                this.f15862c = null;
            }
        }
    }

    public void b(InterfaceC0114b interfaceC0114b, int i2) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                a(this.f15862c, i2);
            } else if (h(interfaceC0114b)) {
                a(this.f15863d, i2);
            }
        }
    }

    void d(@NonNull c cVar) {
        synchronized (this.f15860a) {
            if (this.f15862c == cVar || this.f15863d == cVar) {
                a(cVar, 2);
            }
        }
    }

    public boolean e(InterfaceC0114b interfaceC0114b) {
        boolean g4;
        synchronized (this.f15860a) {
            g4 = g(interfaceC0114b);
        }
        return g4;
    }

    public boolean f(InterfaceC0114b interfaceC0114b) {
        boolean z3;
        synchronized (this.f15860a) {
            z3 = g(interfaceC0114b) || h(interfaceC0114b);
        }
        return z3;
    }

    public void i(InterfaceC0114b interfaceC0114b) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                this.f15862c = null;
                if (this.f15863d != null) {
                    o();
                }
            }
        }
    }

    public void j(InterfaceC0114b interfaceC0114b) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                m(this.f15862c);
            }
        }
    }

    public void k(InterfaceC0114b interfaceC0114b) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                c cVar = this.f15862c;
                if (!cVar.f15867c) {
                    cVar.f15867c = true;
                    this.f15861b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public void l(InterfaceC0114b interfaceC0114b) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                c cVar = this.f15862c;
                if (cVar.f15867c) {
                    cVar.f15867c = false;
                    m(cVar);
                }
            }
        }
    }

    public void n(int i2, InterfaceC0114b interfaceC0114b) {
        synchronized (this.f15860a) {
            if (g(interfaceC0114b)) {
                c cVar = this.f15862c;
                cVar.f15866b = i2;
                this.f15861b.removeCallbacksAndMessages(cVar);
                m(this.f15862c);
                return;
            }
            if (h(interfaceC0114b)) {
                this.f15863d.f15866b = i2;
            } else {
                this.f15863d = new c(i2, interfaceC0114b);
            }
            c cVar2 = this.f15862c;
            if (cVar2 == null || !a(cVar2, 4)) {
                this.f15862c = null;
                o();
            }
        }
    }
}
