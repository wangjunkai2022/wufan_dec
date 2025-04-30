package com.yatoooon.screenadaptation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: AbsLoadViewHelper.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected float f64798a;

    /* renamed from: b  reason: collision with root package name */
    protected float f64799b;

    /* renamed from: c  reason: collision with root package name */
    protected float f64800c;

    /* renamed from: d  reason: collision with root package name */
    protected float f64801d;

    /* renamed from: e  reason: collision with root package name */
    protected int f64802e;

    /* renamed from: f  reason: collision with root package name */
    protected int f64803f;

    /* renamed from: g  reason: collision with root package name */
    protected float f64804g;

    /* renamed from: h  reason: collision with root package name */
    protected String f64805h;

    public a(Context context, int i2, int i4, float f4, String str) {
        this.f64802e = i2;
        this.f64803f = i4;
        this.f64804g = f4;
        this.f64805h = str;
        j(context);
    }

    private void j(Context context) {
        float[] a4 = b.a(context);
        if (a4.length == 4) {
            this.f64800c = a4[0];
            this.f64801d = a4[1];
            this.f64798a = a4[2];
            this.f64799b = a4[3];
        }
    }

    public abstract int a(int i2);

    public abstract void b(View view);

    public abstract void c(View view);

    public abstract void d(View view);

    public abstract void e(View view);

    public void f(View view) {
        g(view, new t2.c());
    }

    public final void g(View view, t2.b bVar) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            bVar.a(viewGroup, this);
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                if (viewGroup.getChildAt(i2) instanceof ViewGroup) {
                    g(viewGroup.getChildAt(i2), bVar);
                } else {
                    bVar.a(viewGroup.getChildAt(i2), this);
                }
            }
            return;
        }
        bVar.a(view, this);
    }

    public abstract void h(View view);

    public void i(Context context) {
        j(context);
    }
}
