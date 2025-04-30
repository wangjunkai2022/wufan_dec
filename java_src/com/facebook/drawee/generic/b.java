package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.facebook.common.internal.h;
import com.facebook.drawee.drawable.r;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: GenericDraweeHierarchyBuilder.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: t  reason: collision with root package name */
    public static final int f12177t = 300;

    /* renamed from: u  reason: collision with root package name */
    public static final r.c f12178u = r.c.f12143f;

    /* renamed from: v  reason: collision with root package name */
    public static final r.c f12179v = r.c.f12144g;

    /* renamed from: a  reason: collision with root package name */
    private Resources f12180a;

    /* renamed from: b  reason: collision with root package name */
    private int f12181b;

    /* renamed from: c  reason: collision with root package name */
    private float f12182c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f12183d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private r.c f12184e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f12185f;

    /* renamed from: g  reason: collision with root package name */
    private r.c f12186g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f12187h;

    /* renamed from: i  reason: collision with root package name */
    private r.c f12188i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f12189j;

    /* renamed from: k  reason: collision with root package name */
    private r.c f12190k;

    /* renamed from: l  reason: collision with root package name */
    private r.c f12191l;

    /* renamed from: m  reason: collision with root package name */
    private Matrix f12192m;

    /* renamed from: n  reason: collision with root package name */
    private PointF f12193n;

    /* renamed from: o  reason: collision with root package name */
    private ColorFilter f12194o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f12195p;

    /* renamed from: q  reason: collision with root package name */
    private List<Drawable> f12196q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f12197r;

    /* renamed from: s  reason: collision with root package name */
    private RoundingParams f12198s;

    public b(Resources resources) {
        this.f12180a = resources;
        s();
    }

    private void Z() {
        List<Drawable> list = this.f12196q;
        if (list != null) {
            for (Drawable drawable : list) {
                h.i(drawable);
            }
        }
    }

    private void s() {
        this.f12181b = 300;
        this.f12182c = 0.0f;
        this.f12183d = null;
        r.c cVar = f12178u;
        this.f12184e = cVar;
        this.f12185f = null;
        this.f12186g = cVar;
        this.f12187h = null;
        this.f12188i = cVar;
        this.f12189j = null;
        this.f12190k = cVar;
        this.f12191l = f12179v;
        this.f12192m = null;
        this.f12193n = null;
        this.f12194o = null;
        this.f12195p = null;
        this.f12196q = null;
        this.f12197r = null;
        this.f12198s = null;
    }

    public static b t(Resources resources) {
        return new b(resources);
    }

    public b A(int i2) {
        this.f12181b = i2;
        return this;
    }

    public b B(int i2) {
        this.f12187h = this.f12180a.getDrawable(i2);
        return this;
    }

    public b C(int i2, @Nullable r.c cVar) {
        this.f12187h = this.f12180a.getDrawable(i2);
        this.f12188i = cVar;
        return this;
    }

    public b D(@Nullable Drawable drawable) {
        this.f12187h = drawable;
        return this;
    }

    public b E(Drawable drawable, @Nullable r.c cVar) {
        this.f12187h = drawable;
        this.f12188i = cVar;
        return this;
    }

    public b F(@Nullable r.c cVar) {
        this.f12188i = cVar;
        return this;
    }

    public b G(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.f12196q = null;
        } else {
            this.f12196q = Arrays.asList(drawable);
        }
        return this;
    }

    public b H(@Nullable List<Drawable> list) {
        this.f12196q = list;
        return this;
    }

    public b I(int i2) {
        this.f12183d = this.f12180a.getDrawable(i2);
        return this;
    }

    public b J(int i2, @Nullable r.c cVar) {
        this.f12183d = this.f12180a.getDrawable(i2);
        this.f12184e = cVar;
        return this;
    }

    public b K(@Nullable Drawable drawable) {
        this.f12183d = drawable;
        return this;
    }

    public b L(Drawable drawable, @Nullable r.c cVar) {
        this.f12183d = drawable;
        this.f12184e = cVar;
        return this;
    }

    public b M(@Nullable r.c cVar) {
        this.f12184e = cVar;
        return this;
    }

    public b N(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.f12197r = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{16842919}, drawable);
            this.f12197r = stateListDrawable;
        }
        return this;
    }

    public b O(int i2) {
        this.f12189j = this.f12180a.getDrawable(i2);
        return this;
    }

    public b P(int i2, @Nullable r.c cVar) {
        this.f12189j = this.f12180a.getDrawable(i2);
        this.f12190k = cVar;
        return this;
    }

    public b Q(@Nullable Drawable drawable) {
        this.f12189j = drawable;
        return this;
    }

    public b R(Drawable drawable, @Nullable r.c cVar) {
        this.f12189j = drawable;
        this.f12190k = cVar;
        return this;
    }

    public b S(@Nullable r.c cVar) {
        this.f12190k = cVar;
        return this;
    }

    public b T(int i2) {
        this.f12185f = this.f12180a.getDrawable(i2);
        return this;
    }

    public b U(int i2, @Nullable r.c cVar) {
        this.f12185f = this.f12180a.getDrawable(i2);
        this.f12186g = cVar;
        return this;
    }

    public b V(@Nullable Drawable drawable) {
        this.f12185f = drawable;
        return this;
    }

    public b W(Drawable drawable, @Nullable r.c cVar) {
        this.f12185f = drawable;
        this.f12186g = cVar;
        return this;
    }

    public b X(@Nullable r.c cVar) {
        this.f12186g = cVar;
        return this;
    }

    public b Y(@Nullable RoundingParams roundingParams) {
        this.f12198s = roundingParams;
        return this;
    }

    public a a() {
        Z();
        return new a(this);
    }

    @Nullable
    public ColorFilter b() {
        return this.f12194o;
    }

    @Nullable
    public PointF c() {
        return this.f12193n;
    }

    @Nullable
    public r.c d() {
        return this.f12191l;
    }

    @Nullable
    public Drawable e() {
        return this.f12195p;
    }

    public float f() {
        return this.f12182c;
    }

    public int g() {
        return this.f12181b;
    }

    public Resources getResources() {
        return this.f12180a;
    }

    @Nullable
    public Drawable h() {
        return this.f12187h;
    }

    @Nullable
    public r.c i() {
        return this.f12188i;
    }

    @Nullable
    public List<Drawable> j() {
        return this.f12196q;
    }

    @Nullable
    public Drawable k() {
        return this.f12183d;
    }

    @Nullable
    public r.c l() {
        return this.f12184e;
    }

    @Nullable
    public Drawable m() {
        return this.f12197r;
    }

    @Nullable
    public Drawable n() {
        return this.f12189j;
    }

    @Nullable
    public r.c o() {
        return this.f12190k;
    }

    @Nullable
    public Drawable p() {
        return this.f12185f;
    }

    @Nullable
    public r.c q() {
        return this.f12186g;
    }

    @Nullable
    public RoundingParams r() {
        return this.f12198s;
    }

    public b u() {
        s();
        return this;
    }

    public b v(@Nullable ColorFilter colorFilter) {
        this.f12194o = colorFilter;
        return this;
    }

    public b w(@Nullable PointF pointF) {
        this.f12193n = pointF;
        return this;
    }

    public b x(@Nullable r.c cVar) {
        this.f12191l = cVar;
        this.f12192m = null;
        return this;
    }

    public b y(@Nullable Drawable drawable) {
        this.f12195p = drawable;
        return this;
    }

    public b z(float f4) {
        this.f12182c = f4;
        return this;
    }
}
