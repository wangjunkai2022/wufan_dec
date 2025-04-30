package com.facebook.drawee.drawable;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* compiled from: DrawableProperties.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    private static final int f12037f = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f12038a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12039b = false;

    /* renamed from: c  reason: collision with root package name */
    private ColorFilter f12040c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f12041d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f12042e = -1;

    @SuppressLint({"Range"})
    public void a(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        int i2 = this.f12038a;
        if (i2 != -1) {
            drawable.setAlpha(i2);
        }
        if (this.f12039b) {
            drawable.setColorFilter(this.f12040c);
        }
        int i4 = this.f12041d;
        if (i4 != -1) {
            drawable.setDither(i4 != 0);
        }
        int i5 = this.f12042e;
        if (i5 != -1) {
            drawable.setFilterBitmap(i5 != 0);
        }
    }

    public void b(int i2) {
        this.f12038a = i2;
    }

    public void c(ColorFilter colorFilter) {
        this.f12040c = colorFilter;
        this.f12039b = true;
    }

    public void d(boolean z3) {
        this.f12041d = z3 ? 1 : 0;
    }

    public void e(boolean z3) {
        this.f12042e = z3 ? 1 : 0;
    }
}
