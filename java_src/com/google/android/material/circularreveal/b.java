package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealHelper;
/* compiled from: CircularRevealWidget.java */
/* loaded from: classes2.dex */
public interface b extends CircularRevealHelper.a {

    /* compiled from: CircularRevealWidget.java */
    /* renamed from: com.google.android.material.circularreveal.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0105b implements TypeEvaluator<e> {

        /* renamed from: b  reason: collision with root package name */
        public static final TypeEvaluator<e> f14481b = new C0105b();

        /* renamed from: a  reason: collision with root package name */
        private final e f14482a = new e();

        @Override // android.animation.TypeEvaluator
        @NonNull
        /* renamed from: a */
        public e evaluate(float f4, @NonNull e eVar, @NonNull e eVar2) {
            this.f14482a.b(c1.a.f(eVar.f14486a, eVar2.f14486a, f4), c1.a.f(eVar.f14487b, eVar2.f14487b, f4), c1.a.f(eVar.f14488c, eVar2.f14488c, f4));
            return this.f14482a;
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes2.dex */
    public static class c extends Property<b, e> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<b, e> f14483a = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        @Nullable
        /* renamed from: a */
        public e get(@NonNull b bVar) {
            return bVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull b bVar, @Nullable e eVar) {
            bVar.setRevealInfo(eVar);
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes2.dex */
    public static class d extends Property<b, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<b, Integer> f14484a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a */
        public Integer get(@NonNull b bVar) {
            return Integer.valueOf(bVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull b bVar, @NonNull Integer num) {
            bVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: d  reason: collision with root package name */
        public static final float f14485d = Float.MAX_VALUE;

        /* renamed from: a  reason: collision with root package name */
        public float f14486a;

        /* renamed from: b  reason: collision with root package name */
        public float f14487b;

        /* renamed from: c  reason: collision with root package name */
        public float f14488c;

        public boolean a() {
            return this.f14488c == Float.MAX_VALUE;
        }

        public void b(float f4, float f5, float f6) {
            this.f14486a = f4;
            this.f14487b = f5;
            this.f14488c = f6;
        }

        public void c(@NonNull e eVar) {
            b(eVar.f14486a, eVar.f14487b, eVar.f14488c);
        }

        private e() {
        }

        public e(float f4, float f5, float f6) {
            this.f14486a = f4;
            this.f14487b = f5;
            this.f14488c = f6;
        }

        public e(@NonNull e eVar) {
            this(eVar.f14486a, eVar.f14487b, eVar.f14488c);
        }
    }

    void a();

    void b();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    e getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i2);

    void setRevealInfo(@Nullable e eVar);
}
