package com.facebook.fresco.animation.backend;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.a;
import javax.annotation.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: AnimationBackendDelegate.java */
/* loaded from: classes.dex */
public class b<T extends a> implements a {

    /* renamed from: g  reason: collision with root package name */
    private static final int f12230g = -1;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private T f12231c;
    @IntRange(from = -1, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK)

    /* renamed from: d  reason: collision with root package name */
    private int f12232d = -1;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ColorFilter f12233e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Rect f12234f;

    public b(@Nullable T t3) {
        this.f12231c = t3;
    }

    @SuppressLint({"Range"})
    private void a(a aVar) {
        Rect rect = this.f12234f;
        if (rect != null) {
            aVar.f(rect);
        }
        int i2 = this.f12232d;
        if (i2 >= 0 && i2 <= 255) {
            aVar.k(i2);
        }
        ColorFilter colorFilter = this.f12233e;
        if (colorFilter != null) {
            aVar.h(colorFilter);
        }
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        T t3 = this.f12231c;
        if (t3 == null) {
            return 0;
        }
        return t3.b();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int c() {
        T t3 = this.f12231c;
        if (t3 == null) {
            return 0;
        }
        return t3.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        T t3 = this.f12231c;
        if (t3 != null) {
            t3.clear();
        }
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int d() {
        T t3 = this.f12231c;
        if (t3 == null) {
            return 0;
        }
        return t3.d();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int e() {
        T t3 = this.f12231c;
        if (t3 == null) {
            return -1;
        }
        return t3.e();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void f(@Nullable Rect rect) {
        T t3 = this.f12231c;
        if (t3 != null) {
            t3.f(rect);
        }
        this.f12234f = rect;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int g() {
        T t3 = this.f12231c;
        if (t3 == null) {
            return -1;
        }
        return t3.g();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void h(ColorFilter colorFilter) {
        T t3 = this.f12231c;
        if (t3 != null) {
            t3.h(colorFilter);
        }
        this.f12233e = colorFilter;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean i(Drawable drawable, Canvas canvas, int i2) {
        T t3 = this.f12231c;
        return t3 != null && t3.i(drawable, canvas, i2);
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int i2) {
        T t3 = this.f12231c;
        if (t3 == null) {
            return 0;
        }
        return t3.j(i2);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void k(@IntRange(from = 0, to = 255) int i2) {
        T t3 = this.f12231c;
        if (t3 != null) {
            t3.k(i2);
        }
        this.f12232d = i2;
    }

    @Nullable
    public T l() {
        return this.f12231c;
    }

    public void m(@Nullable T t3) {
        this.f12231c = t3;
        if (t3 != null) {
            a(t3);
        }
    }
}
