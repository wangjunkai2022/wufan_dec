package com.facebook.drawee.view;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import java.util.ArrayList;
import k0.b;
/* compiled from: MultiDraweeHolder.java */
/* loaded from: classes2.dex */
public class d<DH extends k0.b> {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    boolean f12227a = false;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    ArrayList<b<DH>> f12228b = new ArrayList<>();

    public void a(int i2, b<DH> bVar) {
        h.i(bVar);
        h.g(i2, this.f12228b.size() + 1);
        this.f12228b.add(i2, bVar);
        if (this.f12227a) {
            bVar.m();
        }
    }

    public void b(b<DH> bVar) {
        a(this.f12228b.size(), bVar);
    }

    public void c() {
        if (this.f12227a) {
            for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
                this.f12228b.get(i2).n();
            }
        }
        this.f12228b.clear();
    }

    public void d(Canvas canvas) {
        for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
            Drawable i4 = e(i2).i();
            if (i4 != null) {
                i4.draw(canvas);
            }
        }
    }

    public b<DH> e(int i2) {
        return this.f12228b.get(i2);
    }

    public void f() {
        if (this.f12227a) {
            return;
        }
        this.f12227a = true;
        for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
            this.f12228b.get(i2).m();
        }
    }

    public void g() {
        if (this.f12227a) {
            this.f12227a = false;
            for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
                this.f12228b.get(i2).n();
            }
        }
    }

    public boolean h(MotionEvent motionEvent) {
        for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
            if (this.f12228b.get(i2).o(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    public void i(int i2) {
        b<DH> bVar = this.f12228b.get(i2);
        if (this.f12227a) {
            bVar.n();
        }
        this.f12228b.remove(i2);
    }

    public int j() {
        return this.f12228b.size();
    }

    public boolean k(Drawable drawable) {
        for (int i2 = 0; i2 < this.f12228b.size(); i2++) {
            if (drawable == e(i2).i()) {
                return true;
            }
        }
        return false;
    }
}
