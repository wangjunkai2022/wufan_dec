package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.bitmap.a;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: KeepLastFrameCache.java */
/* loaded from: classes.dex */
public class b implements com.facebook.fresco.animation.bitmap.a {

    /* renamed from: d  reason: collision with root package name */
    private static final int f12270d = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f12271a = -1;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a.InterfaceC0071a f12272b;
    @GuardedBy("this")
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f12273c;

    private synchronized void i() {
        int i2;
        a.InterfaceC0071a interfaceC0071a = this.f12272b;
        if (interfaceC0071a != null && (i2 = this.f12271a) != -1) {
            interfaceC0071a.a(this, i2);
        }
        com.facebook.common.references.a.g(this.f12273c);
        this.f12273c = null;
        this.f12271a = -1;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public void a(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4) {
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void b(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4) {
        int i5;
        if (aVar != null) {
            if (this.f12273c != null && aVar.i().equals(this.f12273c.i())) {
                return;
            }
        }
        com.facebook.common.references.a.g(this.f12273c);
        a.InterfaceC0071a interfaceC0071a = this.f12272b;
        if (interfaceC0071a != null && (i5 = this.f12271a) != -1) {
            interfaceC0071a.a(this, i5);
        }
        this.f12273c = com.facebook.common.references.a.d(aVar);
        a.InterfaceC0071a interfaceC0071a2 = this.f12272b;
        if (interfaceC0071a2 != null) {
            interfaceC0071a2.b(this, i2);
        }
        this.f12271a = i2;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized int c() {
        com.facebook.common.references.a<Bitmap> aVar;
        aVar = this.f12273c;
        return aVar == null ? 0 : com.facebook.imageutils.a.g(aVar.i());
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void clear() {
        i();
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> d(int i2) {
        return com.facebook.common.references.a.d(this.f12273c);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized com.facebook.common.references.a<Bitmap> e(int i2, int i4, int i5) {
        com.facebook.common.references.a<Bitmap> d4;
        d4 = com.facebook.common.references.a.d(this.f12273c);
        i();
        return d4;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public void f(a.InterfaceC0071a interfaceC0071a) {
        this.f12272b = interfaceC0071a;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized boolean g(int i2) {
        boolean z3;
        if (i2 == this.f12271a) {
            z3 = com.facebook.common.references.a.o(this.f12273c);
        }
        return z3;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> h(int i2) {
        if (this.f12271a == i2) {
            return com.facebook.common.references.a.d(this.f12273c);
        }
        return null;
    }
}
